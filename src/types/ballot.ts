// TypeScript types for VoteOut ballot data

export interface Address {
  line1: string;
  line2?: string;
  city: string;
  state: string;
  zip: string;
  normalized?: string;
}

export interface Candidate {
  name: string;
  party: string;
  isIncumbent: boolean;
  yearsInOffice?: number;
  photoUrl?: string;
  website?: string;
  email?: string;
  phone?: string;
}

export interface Contest {
  office: string;
  district?: string;
  candidates: Candidate[];
  level: 'federal' | 'state' | 'local';
  type?: string;
  numberElected?: number;
}

export interface PollingLocation {
  name?: string;
  address: Address;
  hours?: string;
  notes?: string;
}

export interface Ballot {
  id: string;
  address: Address;
  electionDate: string;
  electionName: string;
  contests: Contest[];
  pollingLocation?: PollingLocation;
  earlyVoteSites?: PollingLocation[];
  generatedAt: string;
}

export interface MailingRequest {
  ballotId: string;
  voterAddress: Address;
  mailingAddress: Address;
  email?: string;
}

export interface MailingStatus {
  id: string;
  status: 'pending' | 'processing' | 'sent' | 'failed' | 'cancelled';
  trackingUrl?: string;
  estimatedDelivery?: string;
  errorMessage?: string;
}

// API Response types
export interface GoogleCivicResponse {
  election: {
    id: string;
    name: string;
    electionDay: string;
    ocdDivisionId?: string;
  };
  normalizedInput: {
    line1: string;
    city: string;
    state: string;
    zip: string;
  };
  contests?: Array<{
    office: string;
    level?: string[];
    district?: {
      name?: string;
      scope?: string;
    };
    candidates?: Array<{
      name: string;
      party?: string;
      candidateUrl?: string;
      phone?: string;
      photoUrl?: string;
      email?: string;
    }>;
    type?: string;
    numberElected?: number;
  }>;
  pollingLocations?: Array<{
    address: {
      locationName?: string;
      line1: string;
      line2?: string;
      city: string;
      state: string;
      zip: string;
    };
    pollingHours?: string;
    notes?: string;
  }>;
  earlyVoteSites?: Array<{
    address: {
      locationName?: string;
      line1: string;
      line2?: string;
      city: string;
      state: string;
      zip: string;
    };
    pollingHours?: string;
    notes?: string;
  }>;
}

export interface BallotpediaIncumbentResponse {
  is_incumbent: boolean;
  years_in_office?: number;
  office?: string;
  district?: string;
}

// Current Representatives types
export interface Representative {
  id: string;
  name: string;
  office: string;
  level: 'federal' | 'state' | 'local';
  state?: string;
  district?: string;
  jurisdiction?: string;
  party?: string;
  phone?: string;
  email?: string;
  website?: string;
  twitter?: string;
  facebook?: string;
  youtube?: string;
  photoUrl?: string;
  termStart?: string;
  termEnd?: string;
}

export interface RepresentativesLookup {
  address: Address;
  federal: Representative[];
  state: Representative[];
  local: Representative[];
  generatedAt: string;
}
