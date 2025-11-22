import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { GeocodingService } from '../geocoding-service';
import type { Address } from '@/types/ballot';

// Define state boundaries for validation
const STATE_BOUNDS: Record<
  string,
  { minLat: number; maxLat: number; minLon: number; maxLon: number }
> = {
  CA: { minLat: 32.5, maxLat: 42.0, minLon: -124.5, maxLon: -114.1 },
  NY: { minLat: 40.5, maxLat: 45.0, minLon: -79.8, maxLon: -71.8 },
  TX: { minLat: 25.8, maxLat: 36.5, minLon: -106.7, maxLon: -93.5 },
  FL: { minLat: 24.5, maxLat: 31.0, minLon: -87.6, maxLon: -80.0 },
};

describe('GeocodingService', () => {
  let geocodingService: GeocodingService;
  let fetchMock: any;

  const validCAAddress: Address = {
    line1: '1600 Amphitheatre Parkway',
    city: 'Mountain View',
    state: 'CA',
    zip: '94043',
  };

  beforeEach(() => {
    geocodingService = new GeocodingService();
    fetchMock = vi.fn();
    global.fetch = fetchMock;
  });

  afterEach(() => {
    vi.restoreAllMocks();
  });

  describe('Coordinate Validation Within State Bounds', () => {
    it('should return coordinates within California bounds', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '37.4224764',
            lon: '-122.0842499',
            display_name:
              '1600 Amphitheatre Parkway, Mountain View, CA 94043, USA',
          },
        ],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lat).toBeGreaterThanOrEqual(STATE_BOUNDS.CA.minLat);
      expect(coords.lat).toBeLessThanOrEqual(STATE_BOUNDS.CA.maxLat);
      expect(coords.lon).toBeGreaterThanOrEqual(STATE_BOUNDS.CA.minLon);
      expect(coords.lon).toBeLessThanOrEqual(STATE_BOUNDS.CA.maxLon);
    });

    it('should return coordinates within New York bounds', async () => {
      const nyAddress: Address = {
        line1: 'Times Square',
        city: 'New York',
        state: 'NY',
        zip: '10036',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '40.758896',
            lon: '-73.985130',
            display_name: 'Times Square, New York, NY 10036, USA',
          },
        ],
      });

      const coords = await geocodingService.geocode(nyAddress);

      expect(coords.lat).toBeGreaterThanOrEqual(STATE_BOUNDS.NY.minLat);
      expect(coords.lat).toBeLessThanOrEqual(STATE_BOUNDS.NY.maxLat);
      expect(coords.lon).toBeGreaterThanOrEqual(STATE_BOUNDS.NY.minLon);
      expect(coords.lon).toBeLessThanOrEqual(STATE_BOUNDS.NY.maxLon);
    });

    it('should return coordinates within Texas bounds', async () => {
      const txAddress: Address = {
        line1: '1100 Congress Ave',
        city: 'Austin',
        state: 'TX',
        zip: '78701',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '30.274664',
            lon: '-97.740349',
            display_name: '1100 Congress Ave, Austin, TX 78701, USA',
          },
        ],
      });

      const coords = await geocodingService.geocode(txAddress);

      expect(coords.lat).toBeGreaterThanOrEqual(STATE_BOUNDS.TX.minLat);
      expect(coords.lat).toBeLessThanOrEqual(STATE_BOUNDS.TX.maxLat);
      expect(coords.lon).toBeGreaterThanOrEqual(STATE_BOUNDS.TX.minLon);
      expect(coords.lon).toBeLessThanOrEqual(STATE_BOUNDS.TX.maxLon);
    });

    it('should return coordinates within Florida bounds', async () => {
      const flAddress: Address = {
        line1: '1 Ocean Dr',
        city: 'Miami Beach',
        state: 'FL',
        zip: '33139',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '25.774265',
            lon: '-80.134292',
            display_name: '1 Ocean Dr, Miami Beach, FL 33139, USA',
          },
        ],
      });

      const coords = await geocodingService.geocode(flAddress);

      expect(coords.lat).toBeGreaterThanOrEqual(STATE_BOUNDS.FL.minLat);
      expect(coords.lat).toBeLessThanOrEqual(STATE_BOUNDS.FL.maxLat);
      expect(coords.lon).toBeGreaterThanOrEqual(STATE_BOUNDS.FL.minLon);
      expect(coords.lon).toBeLessThanOrEqual(STATE_BOUNDS.FL.maxLon);
    });

    it('should detect coordinates outside expected state bounds', async () => {
      // Mock returning coordinates from Miami, FL for a California address
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '25.7617', // Miami, FL coordinates (well south of CA)
            lon: '-80.1918',
            display_name: 'Wrong location - Miami FL',
          },
        ],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      // These coordinates are outside CA bounds
      expect(
        coords.lat < STATE_BOUNDS.CA.minLat ||
          coords.lat > STATE_BOUNDS.CA.maxLat ||
          coords.lon < STATE_BOUNDS.CA.minLon ||
          coords.lon > STATE_BOUNDS.CA.maxLon,
      ).toBe(true);
    });
  });

  describe('API Failure Handling', () => {
    it('should throw error with proper message on 404', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 404,
        statusText: 'Not Found',
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Geocoding error: 404 - Not Found',
      );
    });

    it('should throw error with proper message on 500', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 500,
        statusText: 'Internal Server Error',
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Geocoding error: 500 - Internal Server Error',
      );
    });

    it('should throw error with proper message on 503 (service unavailable)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 503,
        statusText: 'Service Unavailable',
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Geocoding error: 503 - Service Unavailable',
      );
    });

    it('should handle network errors gracefully', async () => {
      fetchMock.mockRejectedValueOnce(new Error('Network error'));

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Network error',
      );
    });

    it('should handle timeout errors', async () => {
      fetchMock.mockRejectedValueOnce(new Error('Request timeout'));

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Request timeout',
      );
    });

    it('should handle DNS resolution failures', async () => {
      fetchMock.mockRejectedValueOnce(new Error('getaddrinfo ENOTFOUND'));

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'getaddrinfo ENOTFOUND',
      );
    });
  });

  describe('Rate Limiting (Nominatim 1 req/sec)', () => {
    it('should include User-Agent header (required by Nominatim)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.4224764', lon: '-122.0842499' }],
      });

      await geocodingService.geocode(validCAAddress);

      expect(fetchMock).toHaveBeenCalledWith(
        expect.any(String),
        expect.objectContaining({
          headers: expect.objectContaining({
            'User-Agent': 'VoteOut/1.0',
          }),
        }),
      );
    });

    it('should handle 429 Too Many Requests error', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 429,
        statusText: 'Too Many Requests',
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Geocoding error: 429 - Too Many Requests',
      );
    });

    it('should make GET request (not POST) to avoid rate limit issues', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.4224764', lon: '-122.0842499' }],
      });

      await geocodingService.geocode(validCAAddress);

      expect(fetchMock).toHaveBeenCalledWith(
        expect.any(String),
        expect.objectContaining({
          method: 'GET',
        }),
      );
    });
  });

  describe('Invalid Address Handling', () => {
    it('should throw error when address not found', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [], // Empty results
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Address not found',
      );
    });

    it('should throw error when API returns null', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => null,
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow(
        'Address not found',
      );
    });

    it('should handle malformed addresses gracefully', async () => {
      const malformedAddress: Address = {
        line1: '!!!@@@###',
        city: '$$$$',
        state: 'CA',
        zip: '00000',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [],
      });

      await expect(geocodingService.geocode(malformedAddress)).rejects.toThrow(
        'Address not found',
      );
    });

    it('should handle addresses with only numbers', async () => {
      const numberOnlyAddress: Address = {
        line1: '123456',
        city: '789',
        state: 'CA',
        zip: '94043',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [],
      });

      await expect(geocodingService.geocode(numberOnlyAddress)).rejects.toThrow(
        'Address not found',
      );
    });
  });

  describe('Null/Undefined Address Components', () => {
    it('should handle address without line2', async () => {
      const addressNoLine2: Address = {
        line1: '123 Main St',
        city: 'San Francisco',
        state: 'CA',
        zip: '94102',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.7749', lon: '-122.4194' }],
      });

      const coords = await geocodingService.geocode(addressNoLine2);
      expect(coords).toBeDefined();
      expect(coords.lat).toBeDefined();
      expect(coords.lon).toBeDefined();
    });

    it('should include line2 when present', async () => {
      const addressWithLine2: Address = {
        line1: '123 Main St',
        line2: 'Apt 4B',
        city: 'San Francisco',
        state: 'CA',
        zip: '94102',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.7749', lon: '-122.4194' }],
      });

      await geocodingService.geocode(addressWithLine2);

      // Check that the URL includes apt 4B
      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('Apt+4B');
    });

    it('should filter out empty/null address components', async () => {
      const addressWithEmpty: Address = {
        line1: '123 Main St',
        line2: '',
        city: 'San Francisco',
        state: 'CA',
        zip: '94102',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.7749', lon: '-122.4194' }],
      });

      await geocodingService.geocode(addressWithEmpty);

      const callUrl = fetchMock.mock.calls[0][0];
      // Should not have double commas from empty line2
      expect(callUrl).not.toContain(',,');
    });
  });

  describe('API Response Parsing', () => {
    it('should correctly parse lat and lon as floats', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '37.4224764',
            lon: '-122.0842499',
          },
        ],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(typeof coords.lat).toBe('number');
      expect(typeof coords.lon).toBe('number');
      expect(coords.lat).toBe(37.4224764);
      expect(coords.lon).toBe(-122.0842499);
    });

    it('should handle scientific notation in coordinates', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '3.74224764e1',
            lon: '-1.220842499e2',
          },
        ],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lat).toBeCloseTo(37.4224764, 5);
      expect(coords.lon).toBeCloseTo(-122.0842499, 5);
    });

    it('should handle integer coordinates', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [
          {
            lat: '37',
            lon: '-122',
          },
        ],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lat).toBe(37);
      expect(coords.lon).toBe(-122);
    });

    it('should handle malformed JSON gracefully', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => {
          throw new Error('Invalid JSON');
        },
      });

      await expect(geocodingService.geocode(validCAAddress)).rejects.toThrow();
    });
  });

  describe('Query Parameters', () => {
    it('should include countrycodes=us parameter', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.4224764', lon: '-122.0842499' }],
      });

      await geocodingService.geocode(validCAAddress);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('countrycodes=us');
    });

    it('should include format=json parameter', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.4224764', lon: '-122.0842499' }],
      });

      await geocodingService.geocode(validCAAddress);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('format=json');
    });

    it('should include limit=1 parameter', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.4224764', lon: '-122.0842499' }],
      });

      await geocodingService.geocode(validCAAddress);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('limit=1');
    });

    it('should properly encode address with special characters', async () => {
      const specialAddress: Address = {
        line1: "123 O'Brien St #4",
        city: 'San José',
        state: 'CA',
        zip: '95110',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.3382', lon: '-121.8863' }],
      });

      await geocodingService.geocode(specialAddress);

      const callUrl = fetchMock.mock.calls[0][0];
      // URL should properly encode special characters
      expect(callUrl).toMatch(/O%27Brien|O'Brien/);
      expect(callUrl).toMatch(/Jos%C3%A9|José/);
    });
  });

  describe('Coordinate Edge Cases', () => {
    it('should handle coordinates at 0,0 (Gulf of Guinea)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '0', lon: '0' }],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lat).toBe(0);
      expect(coords.lon).toBe(0);
    });

    it('should handle extreme northern latitude (Alaska)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '71.2906', lon: '-156.7886' }],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lat).toBeGreaterThan(70);
    });

    it('should handle extreme western longitude (Alaska/Hawaii)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '21.3099', lon: '-157.8581' }],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lon).toBeLessThan(-157);
    });

    it('should handle negative and positive coordinates correctly', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.7749', lon: '-122.4194' }],
      });

      const coords = await geocodingService.geocode(validCAAddress);

      expect(coords.lat).toBeGreaterThan(0);
      expect(coords.lon).toBeLessThan(0);
    });
  });

  describe('Base URL and Endpoint', () => {
    it('should use correct Nominatim search endpoint', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => [{ lat: '37.4224764', lon: '-122.0842499' }],
      });

      await geocodingService.geocode(validCAAddress);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('https://nominatim.openstreetmap.org/search');
    });
  });
});
