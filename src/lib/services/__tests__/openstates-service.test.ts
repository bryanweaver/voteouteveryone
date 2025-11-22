import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { OpenStatesService } from '../openstates-service';
import type { Coordinates } from '../geocoding-service';

describe('OpenStatesService', () => {
  let openStatesService: OpenStatesService;
  let fetchMock: any;

  const validCoords: Coordinates = {
    lat: 37.7749,
    lon: -122.4194,
  };

  const mockStateLegislatorResponse = {
    results: [
      {
        id: 'ocd-person/123',
        name: 'Jane Doe',
        jurisdiction: {
          name: 'California',
          classification: 'state',
        },
        current_role: {
          title: 'State Senator',
          district: '11',
          division_id: 'ocd-division/country:us/state:ca/sldu:11',
          start_date: '2023-01-01',
          end_date: '2025-01-01',
        },
        party: [{ name: 'Democratic' }],
        email: 'jane.doe@sen.ca.gov',
        links: [{ url: 'https://senate.ca.gov/doe' }],
        image: 'https://example.com/jane-doe.jpg',
        current_party: 'Democratic',
      },
      {
        id: 'ocd-person/456',
        name: 'John Smith',
        jurisdiction: {
          name: 'California',
          classification: 'state',
        },
        current_role: {
          title: 'Assembly Member',
          district: '19',
          division_id: 'ocd-division/country:us/state:ca/sldl:19',
          start_date: '2023-01-01',
          end_date: '2025-01-01',
        },
        party: [{ name: 'Republican' }],
        current_party: 'Republican',
      },
    ],
  };

  const mockHouseRepResponse = {
    results: [
      ...mockStateLegislatorResponse.results,
      {
        id: 'ocd-person/789',
        name: 'Nancy Pelosi',
        jurisdiction: {
          name: 'United States',
          classification: 'federal',
        },
        current_role: {
          title: 'Representative',
          district: '11',
          division_id: 'ocd-division/country:us/state:ca/cd:11',
          start_date: '2023-01-01',
          end_date: '2025-01-01',
        },
        party: [{ name: 'Democratic' }],
        email: 'nancy.pelosi@mail.house.gov',
        links: [{ url: 'https://pelosi.house.gov' }],
        image: 'https://example.com/pelosi.jpg',
        current_party: 'Democratic',
      },
    ],
  };

  beforeEach(() => {
    openStatesService = new OpenStatesService('test-api-key');
    fetchMock = vi.fn();
    global.fetch = fetchMock;
  });

  afterEach(() => {
    vi.restoreAllMocks();
  });

  describe('Missing API Key Handling', () => {
    it('should return empty array when API key is not configured', async () => {
      const serviceWithoutKey = new OpenStatesService('');

      const result = await serviceWithoutKey.getStateLegislators(validCoords);

      expect(result).toEqual([]);
    });

    it('should log warning when API key is not configured for legislators', async () => {
      const consoleWarnSpy = vi
        .spyOn(console, 'warn')
        .mockImplementation(() => {});
      const serviceWithoutKey = new OpenStatesService('');

      await serviceWithoutKey.getStateLegislators(validCoords);

      expect(consoleWarnSpy).toHaveBeenCalledWith(
        'OpenStates API key not configured - skipping state legislators lookup',
      );

      consoleWarnSpy.mockRestore();
    });

    it('should return null when API key is not configured for House rep', async () => {
      const serviceWithoutKey = new OpenStatesService('');

      const result =
        await serviceWithoutKey.getHouseRepresentative(validCoords);

      expect(result).toBeNull();
    });

    it('should log warning when API key is not configured for House rep', async () => {
      const consoleWarnSpy = vi
        .spyOn(console, 'warn')
        .mockImplementation(() => {});
      const serviceWithoutKey = new OpenStatesService('');

      await serviceWithoutKey.getHouseRepresentative(validCoords);

      expect(consoleWarnSpy).toHaveBeenCalledWith(
        'OpenStates API key not configured - skipping House rep lookup',
      );

      consoleWarnSpy.mockRestore();
    });
  });

  describe('House Representative Extraction from division_id', () => {
    it('should extract House Rep with jurisdiction "United States" and cd: in division_id', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockHouseRepResponse,
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).not.toBeNull();
      expect(result?.name).toBe('Nancy Pelosi');
      expect(result?.office).toBe('U.S. Representative');
    });

    it('should extract state from division_id', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockHouseRepResponse,
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.state).toBe('CA');
    });

    it('should extract district from division_id', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockHouseRepResponse,
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.district).toBe('11');
    });

    it('should handle at-large districts (cd:0)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'ocd-person/999',
              name: 'At-Large Representative',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'ocd-division/country:us/state:mt/cd:0',
              },
              party: [{ name: 'Republican' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.state).toBe('MT');
      expect(result?.district).toBe('0');
    });

    it('should return uppercase state code', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'ocd-person/999',
              name: 'Representative',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'ocd-division/country:us/state:ny/cd:15',
              },
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.state).toBe('NY');
    });

    it('should handle division_id without state', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'ocd-person/999',
              name: 'Representative',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'ocd-division/country:us/cd:1',
              },
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.state).toBeUndefined();
    });

    it('should handle division_id without district', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'ocd-person/999',
              name: 'Representative',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'ocd-division/country:us/state:ca',
              },
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.district).toBeUndefined();
    });
  });

  describe('State Legislators vs Federal Officials Filtering', () => {
    it('should filter out federal officials (jurisdiction = "United States")', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockHouseRepResponse,
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      // Should only return state legislators, not federal
      expect(result).toHaveLength(2);
      expect(result.every((rep) => rep.level === 'state')).toBe(true);
      expect(result.some((rep) => rep.name === 'Nancy Pelosi')).toBe(false);
    });

    it('should include state legislators (jurisdiction = state name)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockStateLegislatorResponse,
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toHaveLength(2);
      expect(result[0].name).toBe('Jane Doe');
      expect(result[1].name).toBe('John Smith');
    });

    it('should correctly identify federal officials by jurisdiction name', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'fed-1',
              name: 'Federal Official 1',
              jurisdiction: { name: 'United States' },
              current_role: { title: 'Senator' },
              party: [{ name: 'Democratic' }],
            },
            {
              id: 'state-1',
              name: 'State Official 1',
              jurisdiction: { name: 'Texas' },
              current_role: { title: 'State Senator' },
              party: [{ name: 'Republican' }],
            },
          ],
        }),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toHaveLength(1);
      expect(result[0].name).toBe('State Official 1');
    });

    it('should handle missing jurisdiction field', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'person-1',
              name: 'Person Without Jurisdiction',
              current_role: { title: 'Legislator' },
              party: [{ name: 'Independent' }],
            },
          ],
        }),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      // Should include since jurisdiction is missing (not "United States")
      expect(result).toHaveLength(1);
    });
  });

  describe('Congressional District Parsing', () => {
    it('should parse single-digit congressional district', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'rep-1',
              name: 'Rep',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'ocd-division/country:us/state:ca/cd:5',
              },
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.district).toBe('5');
    });

    it('should parse double-digit congressional district', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'rep-1',
              name: 'Rep',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'ocd-division/country:us/state:ca/cd:52',
              },
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.district).toBe('52');
    });

    it('should handle malformed division_id', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'rep-1',
              name: 'Rep',
              jurisdiction: { name: 'United States' },
              current_role: {
                division_id: 'invalid-format',
              },
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result?.district).toBeUndefined();
    });
  });

  describe('Empty/Null API Responses', () => {
    it('should handle empty results array for state legislators', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({ results: [] }),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toEqual([]);
    });

    it('should handle empty results array for House rep', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({ results: [] }),
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).toBeNull();
    });

    it('should handle missing results field', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({}),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toEqual([]);
    });

    it('should handle null response for state legislators', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => null,
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toEqual([]);
    });

    it('should handle null response for House rep', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => null,
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).toBeNull();
    });
  });

  describe('API Error Handling', () => {
    it('should return empty array on 404 for state legislators', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 404,
        text: async () => 'Not Found',
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toEqual([]);
    });

    it('should return null on 404 for House rep', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 404,
        text: async () => 'Not Found',
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).toBeNull();
    });

    it('should return empty array on 500 for state legislators', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 500,
        text: async () => 'Internal Server Error',
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toEqual([]);
    });

    it('should return null on 500 for House rep', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 500,
        text: async () => 'Internal Server Error',
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).toBeNull();
    });

    it('should log warning on API error for state legislators', async () => {
      const consoleWarnSpy = vi
        .spyOn(console, 'warn')
        .mockImplementation(() => {});

      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 403,
        text: async () => 'Forbidden',
      });

      await openStatesService.getStateLegislators(validCoords);

      expect(consoleWarnSpy).toHaveBeenCalledWith(
        expect.stringContaining('OpenStates API returned 403'),
        'Forbidden',
      );

      consoleWarnSpy.mockRestore();
    });

    it('should handle network errors for state legislators', async () => {
      const consoleWarnSpy = vi
        .spyOn(console, 'warn')
        .mockImplementation(() => {});

      fetchMock.mockRejectedValueOnce(new Error('Network error'));

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result).toEqual([]);
      expect(consoleWarnSpy).toHaveBeenCalledWith(
        expect.stringContaining('OpenStates API request failed'),
        'Network error',
      );

      consoleWarnSpy.mockRestore();
    });

    it('should handle network errors for House rep', async () => {
      const consoleWarnSpy = vi
        .spyOn(console, 'warn')
        .mockImplementation(() => {});

      fetchMock.mockRejectedValueOnce(new Error('Network error'));

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).toBeNull();

      consoleWarnSpy.mockRestore();
    });
  });

  describe('API Request Construction', () => {
    it('should include API key in header', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockStateLegislatorResponse,
      });

      await openStatesService.getStateLegislators(validCoords);

      expect(fetchMock).toHaveBeenCalledWith(
        expect.any(String),
        expect.objectContaining({
          headers: expect.objectContaining({
            'X-API-KEY': 'test-api-key',
          }),
        }),
      );
    });

    it('should use correct endpoint for geo lookup', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockStateLegislatorResponse,
      });

      await openStatesService.getStateLegislators(validCoords);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('https://v3.openstates.org/people.geo');
    });

    it('should include latitude in query params', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockStateLegislatorResponse,
      });

      await openStatesService.getStateLegislators(validCoords);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('lat=37.7749');
    });

    it('should include longitude in query params', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockStateLegislatorResponse,
      });

      await openStatesService.getStateLegislators(validCoords);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('lng=-122.4194');
    });

    it('should handle negative coordinates', async () => {
      const negCoords: Coordinates = {
        lat: -12.345,
        lon: -67.891, // Use a non-zero trailing digit
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({ results: [] }),
      });

      await openStatesService.getStateLegislators(negCoords);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('lat=-12.345');
      expect(callUrl).toContain('lng=-67.891');
    });
  });

  describe('Data Transformation', () => {
    it('should transform state legislators with all fields', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockStateLegislatorResponse,
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result[0]).toEqual({
        id: 'ocd-person/123',
        name: 'Jane Doe',
        office: 'State Senator',
        level: 'state',
        state: 'California',
        district: '11',
        party: 'Democratic',
        email: 'jane.doe@sen.ca.gov',
        website: 'https://senate.ca.gov/doe',
        photoUrl: 'https://example.com/jane-doe.jpg',
        termStart: '2023-01-01',
        termEnd: '2025-01-01',
      });
    });

    it('should handle missing party array and use current_party', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'person-1',
              name: 'Person',
              jurisdiction: { name: 'Texas' },
              current_role: { title: 'Representative' },
              current_party: 'Independent',
            },
          ],
        }),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result[0].party).toBe('Independent');
    });

    it('should handle missing optional fields', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'person-1',
              name: 'Minimal Person',
              jurisdiction: { name: 'Texas' },
              current_role: {},
            },
          ],
        }),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result[0].email).toBeUndefined();
      expect(result[0].website).toBeUndefined();
      expect(result[0].photoUrl).toBeUndefined();
    });

    it('should default office to "State Legislator" if title missing', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          results: [
            {
              id: 'person-1',
              name: 'Person',
              jurisdiction: { name: 'Texas' },
              current_role: {},
              party: [{ name: 'Democratic' }],
            },
          ],
        }),
      });

      const result = await openStatesService.getStateLegislators(validCoords);

      expect(result[0].office).toBe('State Legislator');
    });

    it('should transform House rep correctly', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockHouseRepResponse,
      });

      const result =
        await openStatesService.getHouseRepresentative(validCoords);

      expect(result).toEqual({
        id: 'ocd-person/789',
        name: 'Nancy Pelosi',
        office: 'U.S. Representative',
        level: 'federal',
        state: 'CA',
        district: '11',
        party: 'Democratic',
        email: 'nancy.pelosi@mail.house.gov',
        website: 'https://pelosi.house.gov',
        photoUrl: 'https://example.com/pelosi.jpg',
        termStart: '2023-01-01',
        termEnd: '2025-01-01',
      });
    });
  });
});
