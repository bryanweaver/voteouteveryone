// Google Civic Information API Client

import type { Address, GoogleCivicResponse } from '@/types/ballot';

export class GoogleCivicAPI {
  private apiKey: string;
  private baseUrl = 'https://www.googleapis.com/civicinfo/v2';

  constructor(apiKey: string) {
    if (!apiKey) {
      throw new Error('Google Civic API key is required');
    }
    this.apiKey = apiKey;
  }

  /**
   * Get voter information for an address
   * https://developers.google.com/civic-information/docs/v2/elections/voterInfoQuery
   */
  async getVoterInfo(address: Address, electionId?: string): Promise<GoogleCivicResponse> {
    const addressString = this.formatAddress(address);

    // If electionId is explicitly provided, use it (including test election 2000 for testing)
    // Otherwise, get the next real (non-test) election
    let targetElectionId = electionId;
    if (!targetElectionId) {
      const elections = await this.getElections();
      // Filter out test elections (id: 2000) and get next upcoming real election
      const realElections = elections.elections.filter((e: any) => e.id !== '2000');
      if (realElections.length === 0) {
        throw new Error('No upcoming elections found');
      }
      // Sort by election day and get the next one
      realElections.sort((a: any, b: any) =>
        new Date(a.electionDay).getTime() - new Date(b.electionDay).getTime()
      );
      targetElectionId = realElections[0].id;
    }

    const url = new URL(`${this.baseUrl}/voterinfo`);
    url.searchParams.append('key', this.apiKey);
    url.searchParams.append('address', addressString);
    url.searchParams.append('electionId', targetElectionId);

    try {
      const response = await fetch(url.toString(), {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
      });

      if (!response.ok) {
        const errorData = await response.json().catch(() => ({}));
        throw new Error(
          `Google Civic API error: ${response.status} - ${
            errorData.error?.message || response.statusText
          }`
        );
      }

      const data: GoogleCivicResponse = await response.json();
      return data;
    } catch (error) {
      console.error('Error fetching voter info from Google Civic API:', error);
      throw error;
    }
  }

  /**
   * Get list of elections
   * https://developers.google.com/civic-information/docs/v2/elections/electionQuery
   */
  async getElections() {
    const url = new URL(`${this.baseUrl}/elections`);
    url.searchParams.append('key', this.apiKey);

    try {
      const response = await fetch(url.toString());

      if (!response.ok) {
        throw new Error(`Failed to fetch elections: ${response.statusText}`);
      }

      return await response.json();
    } catch (error) {
      console.error('Error fetching elections:', error);
      throw error;
    }
  }

  /**
   * Format address for API query
   */
  private formatAddress(address: Address): string {
    const parts = [
      address.line1,
      address.line2,
      address.city,
      address.state,
      address.zip,
    ].filter(Boolean);

    return parts.join(', ');
  }

  /**
   * Get representative info by address
   * https://developers.google.com/civic-information/docs/v2/representatives/representativeInfoByAddress
   */
  async getRepresentativeInfoByAddress(address: Address): Promise<any> {
    const addressString = this.formatAddress(address);

    const url = new URL(`${this.baseUrl}/representatives`);
    url.searchParams.append('key', this.apiKey);
    url.searchParams.append('address', addressString);

    try {
      const response = await fetch(url.toString(), {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
      });

      if (!response.ok) {
        const errorData = await response.json().catch(() => ({}));
        throw new Error(
          `Google Civic API error: ${response.status} - ${
            errorData.error?.message || response.statusText
          }`
        );
      }

      return await response.json();
    } catch (error) {
      console.error('Error fetching representative info from Google Civic API:', error);
      throw error;
    }
  }

  /**
   * Get divisions (including congressional district) for an address
   * https://developers.google.com/civic-information/docs/v2/divisions/search
   */
  async getDivisionsByAddress(address: Address): Promise<any> {
    const addressString = this.formatAddress(address);

    const url = new URL(`${this.baseUrl}/divisions`);
    url.searchParams.append('key', this.apiKey);
    url.searchParams.append('query', addressString);

    try {
      const response = await fetch(url.toString(), {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
      });

      if (!response.ok) {
        const errorData = await response.json().catch(() => ({}));
        throw new Error(
          `Google Civic API error: ${response.status} - ${
            errorData.error?.message || response.statusText
          }`
        );
      }

      return await response.json();
    } catch (error) {
      console.error('Error fetching divisions from Google Civic API:', error);
      throw error;
    }
  }

  /**
   * Extract congressional district from divisions response
   */
  static extractCongressionalDistrict(divisions: any): { state: string; district: string } | null {
    if (!divisions || !divisions.results) return null;

    // Look for congressional district OCD-ID
    // Format: "ocd-division/country:us/state:ca/cd:12"
    for (const result of divisions.results) {
      const ocdId = result.ocdId;
      if (ocdId && ocdId.includes('/cd:')) {
        const parts = ocdId.split('/');

        // Extract state
        const statePart = parts.find((p: string) => p.startsWith('state:'));
        const state = statePart ? statePart.split(':')[1].toUpperCase() : null;

        // Extract district
        const districtPart = parts.find((p: string) => p.startsWith('cd:'));
        const district = districtPart ? districtPart.split(':')[1] : null;

        if (state && district) {
          return { state, district };
        }
      }
    }

    return null;
  }

  /**
   * Normalize address from Google Civic response
   */
  static normalizeAddress(input: GoogleCivicResponse['normalizedInput']): Address {
    return {
      line1: input.line1,
      city: input.city,
      state: input.state,
      zip: input.zip,
      normalized: `${input.line1}, ${input.city}, ${input.state} ${input.zip}`,
    };
  }
}
