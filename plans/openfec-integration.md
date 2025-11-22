# OpenFEC API Integration Plan

## Overview

**OpenFEC** (Open Federal Election Commission) provides free access to federal campaign finance and candidate data. This integration will enable VoteOut to accurately identify incumbent status for federal candidates (House, Senate, Presidential races), which is core to our mission of helping voters identify non-incumbent alternatives.

### Why OpenFEC?

- **Free & Public**: Government-provided API with no cost or quota limits
- **Authoritative Data**: Official FEC records for all federal candidates
- **Comprehensive**: Includes historical data, committee info, and filing status
- **Well-Documented**: Robust API with clear documentation at https://api.open.fec.gov/developers/

### API Documentation

- **Base URL**: `https://api.data.gov/fec/v1/`
- **Authentication**: API key via query parameter `?api_key=YOUR_KEY`
- **Rate Limits**: 1,000 requests/hour (default), can be increased for government/nonprofit use
- **Key Endpoints**:
  - `/candidates/` - Search candidates by name, office, state, district
  - `/candidates/{candidate_id}/` - Get detailed candidate info
  - `/candidates/search/` - Full-text search for candidates
  - `/elections/` - Get election data by year, office, state, district

---

## Current State

### What We Have

1. **Ballot Service** (src/lib/services/ballot-service.ts:115-124)
   - Placeholder method `enrichWithIncumbentStatus()` that currently does nothing
   - Returns all candidates with `isIncumbent: false`
   - TODO comment mentioning Ballotpedia/OpenFEC integration

2. **Data Model** (src/types/ballot.ts:12-21)
   - `Candidate` interface with `isIncumbent: boolean`
   - Optional `yearsInOffice?: number` field (not populated)
   - Office level detection in BallotService

3. **Google Civic API** (src/lib/api/google-civic.ts)
   - Primary source for ballot structure and candidate names
   - Does NOT provide incumbent status

### What's Missing

- No API client for OpenFEC
- No logic to match Google Civic candidates to FEC records
- No caching strategy for FEC data
- No fallback if FEC lookup fails

---

## Implementation Plan

### Phase 1: API Client & Types (2-3 hours)

**Goal**: Create OpenFEC API client with TypeScript types

#### 1.1 Create API Client

**File**: `src/lib/api/openfec.ts`

```typescript
export class OpenFECAPI {
  private apiKey: string;
  private baseUrl = 'https://api.data.gov/fec/v1';

  constructor(apiKey: string) {
    this.apiKey = apiKey;
  }

  // Core methods:
  async searchCandidatesByName(
    name: string,
    office: string,
    state?: string,
    district?: string,
  );
  async getCandidateById(candidateId: string);
  async getElectionsByYear(year: number, office: string);
  async isIncumbent(candidateId: string, office: string, electionYear: number);
}
```

**Key Features**:

- Fuzzy name matching for candidate lookup
- Caching layer to avoid redundant API calls
- Error handling with graceful degradation
- Support for office types: House, Senate, President

#### 1.2 Add TypeScript Types

**File**: `src/types/openfec.ts`

```typescript
export interface FECCandidate {
  candidate_id: string;
  name: string;
  party_full: string;
  office: 'H' | 'S' | 'P'; // House, Senate, President
  office_full: string;
  state: string;
  district?: string; // Only for House races
  incumbent_challenge: 'I' | 'C' | 'O'; // Incumbent, Challenger, Open
  cycles: number[]; // Election years
  election_years: number[];
  active_through: number;
}

export interface FECElection {
  candidate_id: string;
  candidate_name: string;
  office: string;
  state: string;
  district?: string;
  incumbent_challenge_full: string;
  cycle: number;
}
```

#### 1.3 Environment Configuration

**Update**: `.env.example` and `.env.local`

```bash
# Federal Election Commission API (free, for incumbent status)
# Get free API key from: https://api.open.fec.gov/developers/
OPENFEC_API_KEY=your-openfec-api-key-here
```

---

### Phase 2: Incumbent Detection Logic (3-4 hours)

**Goal**: Match Google Civic candidates to FEC records and determine incumbent status

#### 2.1 Create Incumbent Service

**File**: `src/lib/services/incumbent-service.ts`

```typescript
export class IncumbentService {
  private openFEC: OpenFECAPI;
  private cache: Map<string, boolean>; // In-memory cache

  constructor(openFecApiKey: string) {
    this.openFEC = new OpenFECAPI(openFecApiKey);
    this.cache = new Map();
  }

  /**
   * Determine if a candidate is an incumbent
   */
  async checkIncumbent(
    candidateName: string,
    office: string,
    state: string,
    district?: string,
    electionYear?: number,
  ): Promise<boolean>;

  /**
   * Enrich multiple candidates with incumbent status
   */
  async enrichCandidates(
    candidates: Candidate[],
    contest: Contest,
  ): Promise<Candidate[]>;
}
```

**Matching Strategy**:

1. Normalize candidate name (lowercase, remove middle initials)
2. Extract state and district from contest info
3. Query OpenFEC by name + office + state + district
4. Match based on:
   - Exact name match (preferred)
   - Fuzzy name match (Levenshtein distance < 3)
   - Party affiliation confirmation
5. Check `incumbent_challenge` field for 'I' (incumbent) flag
6. Cache results to avoid repeat lookups

#### 2.2 Update Ballot Service

**File**: `src/lib/services/ballot-service.ts`

**Changes**:

```typescript
export class BallotService {
  private googleCivic: GoogleCivicAPI;
  private incumbentService: IncumbentService; // Add this

  constructor(googleCivicApiKey: string, openFecApiKey?: string) {
    this.googleCivic = new GoogleCivicAPI(googleCivicApiKey);

    // OpenFEC is optional - gracefully degrade if not provided
    if (openFecApiKey) {
      this.incumbentService = new IncumbentService(openFecApiKey);
    }
  }

  private async enrichWithIncumbentStatus(
    contests: Contest[],
  ): Promise<Contest[]> {
    // If no incumbent service, return as-is
    if (!this.incumbentService) {
      console.warn('OpenFEC not configured - incumbent status unavailable');
      return contests;
    }

    // Process each contest
    const enrichedContests = await Promise.all(
      contests.map(async (contest) => {
        // Only lookup federal races
        if (contest.level !== 'federal') {
          return contest;
        }

        const enrichedCandidates = await this.incumbentService.enrichCandidates(
          contest.candidates,
          contest,
        );

        return {
          ...contest,
          candidates: enrichedCandidates,
        };
      }),
    );

    return enrichedContests;
  }
}
```

---

### Phase 3: Caching & Performance (2 hours)

**Goal**: Minimize API calls and improve response times

#### 3.1 Database Caching

**Migration**: `supabase/migrations/XXXXXX_create_fec_cache.sql`

```sql
CREATE TABLE fec_candidate_cache (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  candidate_name TEXT NOT NULL,
  office TEXT NOT NULL,
  state TEXT NOT NULL,
  district TEXT,
  election_year INTEGER NOT NULL,
  is_incumbent BOOLEAN NOT NULL,
  fec_candidate_id TEXT,
  cached_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  expires_at TIMESTAMP WITH TIME ZONE DEFAULT (NOW() + INTERVAL '30 days'),

  -- Composite index for fast lookups
  UNIQUE(candidate_name, office, state, COALESCE(district, ''), election_year)
);

-- Index for expiration cleanup
CREATE INDEX idx_fec_cache_expires ON fec_candidate_cache(expires_at);

-- Auto-cleanup function (run daily)
CREATE OR REPLACE FUNCTION cleanup_expired_fec_cache()
RETURNS void AS $$
BEGIN
  DELETE FROM fec_candidate_cache
  WHERE expires_at < NOW();
END;
$$ LANGUAGE plpgsql;
```

#### 3.2 Multi-Layer Cache Strategy

1. **In-Memory Cache**: Map<string, boolean> for current request
2. **Database Cache**: Supabase table with 30-day expiration
3. **OpenFEC API**: Final fallback

**Cache Key Format**: `{name}|{office}|{state}|{district}|{year}`

---

### Phase 4: Error Handling & Fallbacks (1-2 hours)

**Goal**: Graceful degradation when FEC API is unavailable

#### 4.1 Fallback Strategy

1. **Check Database Cache First**: Use cached data if available and not expired
2. **Try OpenFEC API**: If cache miss, query API
3. **Handle API Failures**:
   - Network errors → return `isIncumbent: false`, log warning
   - Rate limit hit → use cache only, queue for later
   - Invalid API key → disable FEC lookups, log error
4. **Name Match Confidence**:
   - High confidence (exact match) → trust result
   - Low confidence (fuzzy match) → flag for manual review
   - No match → default to `false`, log candidate name

#### 4.2 Monitoring & Logging

**Metrics to Track**:

- FEC API call count and latency
- Cache hit rate (memory vs database vs API)
- Name match failures (candidates not found in FEC)
- Incumbent detection accuracy (manual spot-checks)

**Logging**:

```typescript
console.info('FEC lookup:', {
  candidate: name,
  office,
  state,
  district,
  source: 'cache' | 'api',
  matchConfidence: 'exact' | 'fuzzy' | 'none',
  isIncumbent,
});
```

---

### Phase 5: Testing (2-3 hours)

#### 5.1 Unit Tests

**File**: `src/lib/api/__tests__/openfec.test.ts`

Test cases:

- ✅ Search candidates by name with exact match
- ✅ Search candidates with fuzzy name match
- ✅ Handle multiple candidates with same name
- ✅ Detect incumbent status correctly
- ✅ Handle API errors gracefully
- ✅ Respect rate limits
- ✅ Cache repeated lookups

**File**: `src/lib/services/__tests__/incumbent-service.test.ts`

Test cases:

- ✅ Enrich House candidates with incumbent status
- ✅ Enrich Senate candidates with incumbent status
- ✅ Skip non-federal races
- ✅ Handle missing district info
- ✅ Handle name mismatches
- ✅ Use cached results when available

#### 5.2 Integration Tests

**Real-World Test Cases**:

1. **Known Incumbent**:
   - Nancy Pelosi (CA-11) → should be `true` (served since 1987)
   - Mitch McConnell (KY Senator) → should be `true` (served since 1985)

2. **Known Challenger**:
   - Any candidate in open seat race → should be `false`
   - First-time candidates → should be `false`

3. **Edge Cases**:
   - Presidential race (no incumbent in 2024)
   - Special elections
   - Candidates who changed districts

#### 5.3 Manual Testing Checklist

- [ ] Get OpenFEC API key from https://api.open.fec.gov/developers/
- [ ] Test with real addresses in multiple states
- [ ] Verify incumbent status matches reality (check congress.gov)
- [ ] Test with upcoming election data (2026 midterms)
- [ ] Measure API latency and cache performance
- [ ] Test with API key missing (should gracefully degrade)

---

## Technical Considerations

### 1. Name Matching Challenges

**Problem**: Google Civic may use different name formats than FEC

Examples:

- Google Civic: "Robert Smith Jr."
- FEC: "SMITH, ROBERT JR"
- FEC: "BOB SMITH"

**Solution**:

- Normalize both names: lowercase, remove punctuation, extract last name
- Use Levenshtein distance for fuzzy matching
- Require party affiliation match as confirmation
- Log low-confidence matches for manual review

### 2. District Numbering

**Problem**: House districts may be formatted differently

Examples:

- Google Civic: "Congressional District 7"
- FEC: "07"
- FEC: "7"

**Solution**:

- Extract numeric district from Google Civic
- Normalize to string without leading zeros
- Match both "07" and "7" formats

### 3. Election Timing

**Problem**: FEC data updates on different schedule than Google Civic

**Solution**:

- Extract election year from Google Civic `electionDay` field
- Query FEC for candidates in that cycle
- For upcoming elections, use most recent cycle data
- Cache with expiration based on election date proximity

### 4. Rate Limiting

**Problem**: 1,000 requests/hour may not be enough during peak usage

**Solution**:

- Implement aggressive caching (30-day expiration)
- Batch candidate lookups when possible
- Request rate limit increase for nonprofit use
- Consider pre-populating cache for major elections

---

## Database Schema Changes

**New Tables**:

1. `fec_candidate_cache` - Cache FEC API responses (see Phase 3)
2. Optional: `incumbent_status_override` - Manual corrections for edge cases

```sql
-- For cases where FEC data is wrong or unavailable
CREATE TABLE incumbent_status_override (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  candidate_name TEXT NOT NULL,
  office TEXT NOT NULL,
  state TEXT NOT NULL,
  district TEXT,
  election_year INTEGER NOT NULL,
  is_incumbent BOOLEAN NOT NULL,
  reason TEXT, -- Why we're overriding
  created_by TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),

  UNIQUE(candidate_name, office, state, COALESCE(district, ''), election_year)
);
```

---

## Rollout Plan

### Step 1: Deploy Infrastructure

- [ ] Add `OPENFEC_API_KEY` to environment variables
- [ ] Run database migrations for cache tables
- [ ] Deploy OpenFEC API client code

### Step 2: Enable for Testing

- [ ] Enable FEC lookups for internal testing only
- [ ] Manually verify accuracy for sample ballots
- [ ] Monitor error rates and cache performance

### Step 3: Gradual Rollout

- [ ] Enable for 10% of users
- [ ] Monitor incumbent detection accuracy
- [ ] Collect feedback on false positives/negatives
- [ ] Increase to 50%, then 100%

### Step 4: Monitor & Iterate

- [ ] Set up alerts for API failures
- [ ] Weekly review of unmatched candidates
- [ ] Quarterly review of incumbent accuracy
- [ ] Update name-matching algorithm as needed

---

## Success Metrics

**Primary**:

- **Incumbent Detection Accuracy**: >95% for federal races
- **API Reliability**: <1% error rate for FEC lookups
- **Cache Hit Rate**: >80% during election season

**Secondary**:

- Candidate name match rate: >90% exact or fuzzy match
- Average lookup latency: <500ms including cache
- User-reported errors: <5 per 1,000 ballots

---

## Future Enhancements

### 1. Multi-Source Verification

- Cross-reference FEC data with Ballotpedia
- Use vote.gov for additional verification
- Flag discrepancies for manual review

### 2. Historical Context

- Add `yearsInOffice` field (calculate from FEC `cycles`)
- Show "First elected in [year]" on ballot cards
- Highlight long-term incumbents (10+ years)

### 3. State & Local Incumbent Detection

- Partner with state election boards for state legislator data
- Integrate Ballotpedia for comprehensive coverage
- Build fallback heuristics (analyze past election results)

### 4. Predictive Caching

- Pre-populate cache for upcoming elections
- Identify races with primaries and cache all candidates
- Sync with FEC filing calendar

---

## References

- OpenFEC API Docs: https://api.open.fec.gov/developers/
- FEC Candidate Guide: https://www.fec.gov/help-candidates-and-committees/
- Google Civic API: https://developers.google.com/civic-information
- Ballotpedia API: https://ballotpedia.org/API-documentation

---

## Questions for Team Review

1. Should we support party primaries (incumbent vs incumbent scenarios)?
2. What's our policy on special elections and appointed officials?
3. Do we show "Acting" or "Appointed" status differently than elected incumbents?
4. How do we handle redistricting (incumbent in new district)?
5. Should we build an admin dashboard for manual incumbent status overrides?

---

## Appendix: OpenFEC API Examples

### Example 1: Search for House Candidate

**Request**:

```
GET https://api.data.gov/fec/v1/candidates/search/
  ?api_key=YOUR_KEY
  &name=Nancy Pelosi
  &office=H
  &state=CA
  &district=11
```

**Response**:

```json
{
  "results": [
    {
      "candidate_id": "H8CA05035",
      "name": "PELOSI, NANCY",
      "party_full": "DEMOCRATIC PARTY",
      "office": "H",
      "office_full": "House",
      "state": "CA",
      "district": "11",
      "incumbent_challenge": "I",
      "cycles": [2022, 2024],
      "election_years": [2022, 2024],
      "active_through": 2024
    }
  ]
}
```

### Example 2: Get Candidate Details

**Request**:

```
GET https://api.data.gov/fec/v1/candidates/H8CA05035/
  ?api_key=YOUR_KEY
```

**Response**:

```json
{
  "results": [
    {
      "candidate_id": "H8CA05035",
      "name": "PELOSI, NANCY",
      "office": "H",
      "state": "CA",
      "district": "11",
      "party": "DEM",
      "incumbent_challenge_full": "Incumbent",
      "candidate_status": "C",
      "election_years": [1988, 1990, ..., 2024]
    }
  ]
}
```

---

**Document Version**: 1.0
**Last Updated**: 2025-01-22
**Author**: Claude (AI Planning Assistant)
**Status**: Draft - Awaiting Team Review
