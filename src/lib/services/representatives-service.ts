// Representatives Service - Main orchestrator for looking up all representatives

import { supabaseClient } from '@/lib/db/server-side/supabase-client';
import { GeocodingService } from './geocoding-service';
import { OpenStatesService } from './openstates-service';
import { GoogleCivicAPI } from '../api/google-civic';
import type { Address, Representative, RepresentativesLookup } from '@/types/ballot';

export class RepresentativesService {
  private geocoding: GeocodingService;
  private openStates: OpenStatesService;
  private googleCivic: GoogleCivicAPI;

  constructor(
    openStatesApiKey: string,
    googleCivicApiKey: string
  ) {
    this.geocoding = new GeocodingService();
    this.openStates = new OpenStatesService(openStatesApiKey);
    this.googleCivic = new GoogleCivicAPI(googleCivicApiKey);
  }

  /**
   * Get all representatives for an address
   */
  async getRepresentatives(address: Address): Promise<RepresentativesLookup> {
    try {
      // Get coordinates for address
      const coords = await this.geocoding.geocode(address);

      // Fetch representatives from all sources in parallel
      const [federal, state, local] = await Promise.all([
        this.getFederalReps(address, coords),
        this.getStateReps(coords),
        this.getLocalReps(coords),
      ]);

      return {
        address,
        federal,
        state,
        local,
        generatedAt: new Date().toISOString(),
      };
    } catch (error) {
      console.error('Error getting representatives:', error);
      throw new Error(
        `Failed to get representatives: ${
          error instanceof Error ? error.message : 'Unknown error'
        }`
      );
    }
  }

  /**
   * Get federal representatives (from our database + OpenStates for House rep)
   */
  private async getFederalReps(address: Address, coords: { lat: number; lon: number }): Promise<Representative[]> {
    try {
      // Get President and VP (no state filter)
      const { data: national, error: nationalError } = await supabaseClient
        .from('representatives')
        .select('*')
        .eq('level', 'federal')
        .is('state', null)
        .order('office');

      if (nationalError) {
        console.error('Error fetching national reps:', nationalError);
      }

      // Get state's Senators
      const { data: senators, error: senatorsError } = await supabaseClient
        .from('representatives')
        .select('*')
        .eq('level', 'federal')
        .eq('state', address.state)
        .ilike('office', '%senator%')
        .order('name');

      if (senatorsError) {
        console.error('Error fetching senators:', senatorsError);
      }

      // Get House Representative from OpenStates
      const houseRep = await this.getHouseRepFromOpenStates(coords);

      const dbReps = [
        ...(national || []),
        ...(senators || []),
      ];

      const transformedDbReps = this.transformDbRepsToType(dbReps);

      // Add House rep if found (already in correct format)
      return houseRep ? [...transformedDbReps, houseRep] : transformedDbReps;
    } catch (error) {
      console.error('Error fetching federal reps:', error);
      return [];
    }
  }

  /**
   * Get state legislators (from OpenStates)
   * Also extracts House rep if found
   */
  private async getStateReps(coords: { lat: number; lon: number }): Promise<Representative[]> {
    try {
      const allPeople = await this.openStates.getStateLegislators(coords);
      // State legislators are already filtered by OpenStates service
      return allPeople;
    } catch (error) {
      console.warn('State legislators lookup skipped:', error instanceof Error ? error.message : 'Unknown error');
      return [];
    }
  }

  /**
   * Get House representative from OpenStates
   */
  private async getHouseRepFromOpenStates(coords: { lat: number; lon: number }): Promise<Representative | null> {
    try {
      return await this.openStates.getHouseRepresentative(coords);
    } catch (error) {
      console.warn('House rep lookup from OpenStates failed:', error instanceof Error ? error.message : 'Unknown error');
      return null;
    }
  }

  /**
   * Get local officials (from database or Google Divisions API)
   */
  private async getLocalReps(coords: { lat: number; lon: number }): Promise<Representative[]> {
    try {
      // TODO: Implement Google Divisions API lookup for local officials
      // For now, return empty array
      return [];
    } catch (error) {
      console.error('Error fetching local reps:', error);
      return [];
    }
  }

  /**
   * Transform database representatives to our type
   */
  private transformDbRepsToType(dbReps: any[]): Representative[] {
    return dbReps.map((rep) => ({
      id: rep.id,
      name: rep.name,
      office: rep.office,
      level: rep.level,
      state: rep.state,
      district: rep.district,
      jurisdiction: rep.jurisdiction,
      party: rep.party,
      phone: rep.phone,
      email: rep.email,
      website: rep.website,
      twitter: rep.twitter,
      facebook: rep.facebook,
      youtube: rep.youtube,
      photoUrl: rep.photo_url,
      termStart: rep.term_start,
      termEnd: rep.term_end,
    }));
  }
}
