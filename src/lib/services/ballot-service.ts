// Ballot Service - Aggregates data from multiple sources

import { GoogleCivicAPI } from '@/lib/api/google-civic';
import type {
  Address,
  Ballot,
  Contest,
  Candidate,
  PollingLocation,
  GoogleCivicResponse,
} from '@/types/ballot';

export class BallotService {
  private googleCivic: GoogleCivicAPI;

  constructor(googleCivicApiKey: string) {
    this.googleCivic = new GoogleCivicAPI(googleCivicApiKey);
  }

  /**
   * Main method: Get complete ballot with incumbent status
   */
  async getBallot(address: Address, electionId?: string): Promise<Ballot> {
    try {
      // 1. Get ballot structure from Google Civic API
      const civicData = await this.googleCivic.getVoterInfo(address, electionId);

      // 2. Transform to our ballot format
      const contests = this.transformContests(civicData.contests || []);

      // 3. For MVP, we'll mark incumbents manually or use simple heuristics
      // TODO: Later integrate Ballotpedia API for accurate incumbent status
      const contestsWithIncumbents = await this.enrichWithIncumbentStatus(contests);

      // 4. Build polling location
      const pollingLocation = this.transformPollingLocation(
        civicData.pollingLocations?.[0]
      );

      const earlyVoteSites = civicData.earlyVoteSites?.map((site) =>
        this.transformPollingLocation(site)
      );

      return {
        id: this.generateBallotId(address, civicData.election.id),
        address: GoogleCivicAPI.normalizeAddress(civicData.normalizedInput),
        electionDate: civicData.election.electionDay,
        electionName: civicData.election.name,
        contests: contestsWithIncumbents,
        pollingLocation,
        earlyVoteSites,
        generatedAt: new Date().toISOString(),
      };
    } catch (error) {
      console.error('Error in getBallot:', error);
      throw new Error(
        `Failed to get ballot information: ${
          error instanceof Error ? error.message : 'Unknown error'
        }`
      );
    }
  }

  /**
   * Transform Google Civic contests to our format
   */
  private transformContests(contests: GoogleCivicResponse['contests']): Contest[] {
    if (!contests) return [];

    return contests.map((contest) => ({
      office: contest.office,
      district: contest.district?.name,
      candidates: (contest.candidates || []).map((candidate) => ({
        name: candidate.name,
        party: this.normalizeParty(candidate.party || 'Unknown'),
        isIncumbent: false, // Will be enriched later
        photoUrl: candidate.photoUrl,
        website: candidate.candidateUrl,
        email: candidate.email,
        phone: candidate.phone,
      })),
      level: this.determineLevel(contest.office),
      type: contest.type,
      numberElected: contest.numberElected,
    }));
  }

  /**
   * Transform polling location from Google Civic format
   */
  private transformPollingLocation(
    location: GoogleCivicResponse['pollingLocations'][0] | undefined
  ): PollingLocation | undefined {
    if (!location) return undefined;

    return {
      name: location.address.locationName,
      address: {
        line1: location.address.line1,
        line2: location.address.line2,
        city: location.address.city,
        state: location.address.state,
        zip: location.address.zip,
      },
      hours: location.pollingHours,
      notes: location.notes,
    };
  }

  /**
   * Enrich contests with incumbent status
   * For MVP: Use simple heuristics or manual data
   * TODO: Integrate Ballotpedia API for accurate data
   */
  private async enrichWithIncumbentStatus(
    contests: Contest[]
  ): Promise<Contest[]> {
    // For MVP, we'll use a simple heuristic or return as-is
    // In production, this would call Ballotpedia API or OpenFEC API

    // TODO: Implement actual incumbent lookup
    // For now, returning contests as-is with isIncumbent = false
    return contests;
  }

  /**
   * Determine if office is federal, state, or local
   */
  private determineLevel(office: string): 'federal' | 'state' | 'local' {
    if (!office) return 'local'; // Default to local if office is undefined
    const lowerOffice = office.toLowerCase();

    // Federal offices
    if (
      lowerOffice.includes('president') ||
      lowerOffice.includes('senator') ||
      lowerOffice.includes('representative') ||
      lowerOffice.includes('congress') ||
      lowerOffice.includes('u.s.') ||
      lowerOffice.includes('united states')
    ) {
      return 'federal';
    }

    // State offices
    if (
      lowerOffice.includes('governor') ||
      lowerOffice.includes('state senate') ||
      lowerOffice.includes('state representative') ||
      lowerOffice.includes('state assembly') ||
      lowerOffice.includes('attorney general') ||
      lowerOffice.includes('secretary of state') ||
      lowerOffice.includes('state')
    ) {
      return 'state';
    }

    // Everything else is local
    return 'local';
  }

  /**
   * Normalize party abbreviations
   */
  private normalizeParty(party: string): string {
    const normalized = party.trim();

    // Common abbreviations
    const partyMap: Record<string, string> = {
      'Democratic': 'D',
      'Democrat': 'D',
      'Republican': 'R',
      'Independent': 'I',
      'Libertarian': 'L',
      'Green': 'G',
      'Nonpartisan': 'NP',
      'None': 'NP',
    };

    return partyMap[normalized] || normalized;
  }

  /**
   * Generate unique ballot ID for caching
   */
  private generateBallotId(address: Address, electionId: string): string {
    const addressKey = `${address.line1}${address.city}${address.state}${address.zip}`
      .toLowerCase()
      .replace(/\s+/g, '');

    // Simple hash function
    let hash = 0;
    for (let i = 0; i < addressKey.length; i++) {
      const char = addressKey.charCodeAt(i);
      hash = (hash << 5) - hash + char;
      hash = hash & hash; // Convert to 32bit integer
    }

    return `ballot_${electionId}_${Math.abs(hash).toString(36)}`;
  }
}
