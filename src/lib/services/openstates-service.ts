// OpenStates Service - Fetches state legislators
// Uses OpenStates (Plural) API v3

import type { Representative } from '@/types/ballot';
import type { Coordinates } from './geocoding-service';

export class OpenStatesService {
  private apiKey: string;
  private baseUrl = 'https://v3.openstates.org';

  constructor(apiKey: string) {
    this.apiKey = apiKey;
  }

  /**
   * Get state legislators for a geographic location
   */
  async getStateLegislators(coords: Coordinates): Promise<Representative[]> {
    // If no API key, return empty array
    if (!this.apiKey) {
      console.warn('OpenStates API key not configured - skipping state legislators lookup');
      return [];
    }

    // OpenStates v3 uses people.geo endpoint for lat/lng lookups
    const url = new URL(`${this.baseUrl}/people.geo`);
    url.searchParams.append('lat', coords.lat.toString());
    url.searchParams.append('lng', coords.lon.toString());

    try {
      const response = await fetch(url.toString(), {
        method: 'GET',
        headers: {
          'X-API-KEY': this.apiKey,
        },
      });

      if (!response.ok) {
        const errorText = await response.text().catch(() => 'Could not read error');
        console.warn(`OpenStates API returned ${response.status}:`, errorText);
        return [];
      }

      const data = await response.json();

      // Transform to our Representative format
      return this.transformToRepresentatives(data.results || []);
    } catch (error) {
      console.warn('OpenStates API request failed - skipping state legislators:', error instanceof Error ? error.message : 'Unknown error');
      return [];
    }
  }

  /**
   * Get House Representative for a geographic location
   */
  async getHouseRepresentative(coords: Coordinates): Promise<Representative | null> {
    // If no API key, return null
    if (!this.apiKey) {
      console.warn('OpenStates API key not configured - skipping House rep lookup');
      return null;
    }

    // OpenStates v3 uses people.geo endpoint for lat/lng lookups
    const url = new URL(`${this.baseUrl}/people.geo`);
    url.searchParams.append('lat', coords.lat.toString());
    url.searchParams.append('lng', coords.lon.toString());

    try {
      const response = await fetch(url.toString(), {
        method: 'GET',
        headers: {
          'X-API-KEY': this.apiKey,
        },
      });

      if (!response.ok) {
        const errorText = await response.text().catch(() => 'Could not read error');
        console.warn(`OpenStates API returned ${response.status}:`, errorText);
        return null;
      }

      const data = await response.json();
      const people = data.results || [];

      // Find the House Representative
      // They have jurisdiction "United States" and division_id contains "/cd:"
      const houseRep = people.find((person: any) => {
        const jurisdiction = person.jurisdiction?.name || '';
        const divisionId = person.current_role?.division_id || '';
        return jurisdiction === 'United States' && divisionId.includes('/cd:');
      });

      if (!houseRep) {
        return null;
      }

      // Transform to our Representative format
      return {
        id: houseRep.id,
        name: houseRep.name,
        office: 'U.S. Representative',
        level: 'federal' as const,
        state: houseRep.current_role?.division_id?.match(/state:(\w+)/)?.[1]?.toUpperCase(),
        district: houseRep.current_role?.division_id?.match(/cd:(\d+)/)?.[1],
        party: houseRep.party?.[0]?.name || houseRep.current_party,
        email: houseRep.email,
        website: houseRep.links?.[0]?.url,
        photoUrl: houseRep.image,
        termStart: houseRep.current_role?.start_date,
        termEnd: houseRep.current_role?.end_date,
      };
    } catch (error) {
      console.warn('OpenStates API request failed - skipping House rep:', error instanceof Error ? error.message : 'Unknown error');
      return null;
    }
  }

  private transformToRepresentatives(people: any[]): Representative[] {
    return people
      .filter((person) => {
        // Filter out federal officials based on jurisdiction
        // Federal officials have jurisdiction.name = "United States"
        // State officials have jurisdiction.name = state name (e.g., "California", "Texas")
        const jurisdiction = person.jurisdiction?.name || '';
        const isFederal = jurisdiction === 'United States';

        return !isFederal;
      })
      .map((person) => ({
        id: person.id,
        name: person.name,
        office: person.current_role?.title || 'State Legislator',
        level: 'state' as const,
        state: person.jurisdiction?.classification === 'state'
          ? person.jurisdiction.name
          : undefined,
        district: person.current_role?.district,
        party: person.party?.[0]?.name || person.current_party,
        email: person.email,
        website: person.links?.[0]?.url,
        photoUrl: person.image,
        termStart: person.current_role?.start_date,
        termEnd: person.current_role?.end_date,
      }));
  }
}
