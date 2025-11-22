// Geocoding Service - Converts addresses to lat/long coordinates
// Uses Nominatim (OpenStreetMap's free geocoding service)

import type { Address } from '@/types/ballot';

export interface Coordinates {
  lat: number;
  lon: number;
}

export class GeocodingService {
  private baseUrl = 'https://nominatim.openstreetmap.org';
  private userAgent = 'VoteOut/1.0'; // Required by Nominatim

  /**
   * Convert address to coordinates
   */
  async geocode(address: Address): Promise<Coordinates> {
    const addressString = this.formatAddress(address);

    const url = new URL(`${this.baseUrl}/search`);
    url.searchParams.append('q', addressString);
    url.searchParams.append('format', 'json');
    url.searchParams.append('limit', '1');
    url.searchParams.append('countrycodes', 'us');

    try {
      const response = await fetch(url.toString(), {
        method: 'GET',
        headers: {
          'User-Agent': this.userAgent,
        },
      });

      if (!response.ok) {
        throw new Error(`Geocoding error: ${response.status} - ${response.statusText}`);
      }

      const data = await response.json();

      if (!data || data.length === 0) {
        throw new Error('Address not found');
      }

      return {
        lat: parseFloat(data[0].lat),
        lon: parseFloat(data[0].lon),
      };
    } catch (error) {
      console.error('Error geocoding address:', error);
      throw error;
    }
  }

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
}
