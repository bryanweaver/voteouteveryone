import { describe, it, expect, beforeEach, afterEach, vi } from 'vitest';
import { GoogleCivicAPI } from '../google-civic';
import type { Address } from '@/types/ballot';

describe('GoogleCivicAPI', () => {
  let googleCivic: GoogleCivicAPI;
  let fetchMock: any;

  const validAddress: Address = {
    line1: '1600 Amphitheatre Parkway',
    city: 'Mountain View',
    state: 'CA',
    zip: '94043',
  };

  const mockElectionsResponse = {
    elections: [
      {
        id: '2000',
        name: 'VIP Test Election',
        electionDay: '2025-01-01',
      },
      {
        id: '2024',
        name: 'General Election',
        electionDay: '2024-11-05',
      },
      {
        id: '2026',
        name: 'Midterm Election',
        electionDay: '2026-11-03',
      },
    ],
  };

  const mockVoterInfoResponse = {
    election: {
      id: '2024',
      name: 'General Election',
      electionDay: '2024-11-05',
    },
    normalizedInput: {
      line1: '1600 Amphitheatre Parkway',
      city: 'Mountain View',
      state: 'CA',
      zip: '94043',
    },
    contests: [
      {
        office: 'President',
        candidates: [
          { name: 'Candidate A', party: 'Democratic' },
          { name: 'Candidate B', party: 'Republican' },
        ],
      },
    ],
  };

  beforeEach(() => {
    googleCivic = new GoogleCivicAPI('test-api-key');
    fetchMock = vi.fn();
    global.fetch = fetchMock;
  });

  afterEach(() => {
    vi.restoreAllMocks();
  });

  describe('Constructor', () => {
    it('should throw error if API key is not provided', () => {
      expect(() => new GoogleCivicAPI('')).toThrow(
        'Google Civic API key is required',
      );
    });

    it('should throw error if API key is null', () => {
      expect(() => new GoogleCivicAPI(null as any)).toThrow(
        'Google Civic API key is required',
      );
    });

    it('should throw error if API key is undefined', () => {
      expect(() => new GoogleCivicAPI(undefined as any)).toThrow(
        'Google Civic API key is required',
      );
    });

    it('should accept valid API key', () => {
      expect(() => new GoogleCivicAPI('valid-key')).not.toThrow();
    });
  });

  describe('"No upcoming elections" vs API error distinction', () => {
    it('should throw "No upcoming elections" when no real elections exist', async () => {
      // Mock getElections to return only test election
      fetchMock
        .mockResolvedValueOnce({
          ok: true,
          json: async () => ({
            elections: [
              {
                id: '2000',
                name: 'VIP Test Election',
                electionDay: '2025-01-01',
              },
            ],
          }),
        })
        .mockResolvedValueOnce({
          ok: true,
          json: async () => mockVoterInfoResponse,
        });

      await expect(googleCivic.getVoterInfo(validAddress)).rejects.toThrow(
        'No upcoming elections found',
      );
    });

    it('should NOT throw "No upcoming elections" when real elections exist', async () => {
      fetchMock
        .mockResolvedValueOnce({
          ok: true,
          json: async () => mockElectionsResponse,
        })
        .mockResolvedValueOnce({
          ok: true,
          json: async () => mockVoterInfoResponse,
        });

      await expect(
        googleCivic.getVoterInfo(validAddress),
      ).resolves.toBeDefined();
    });

    it('should throw API error (not "no elections") when API returns 404', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 404,
        json: async () => ({ error: { message: 'Not Found' } }),
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Google Civic API error: 404 - Not Found');
    });

    it('should throw API error (not "no elections") when API returns 500', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 500,
        statusText: 'Internal Server Error',
        json: async () => ({}),
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Google Civic API error: 500 - Internal Server Error');
    });

    it('should distinguish between empty elections array and API error', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({ elections: [] }),
      });

      // Should throw "no elections" not API error
      await expect(googleCivic.getVoterInfo(validAddress)).rejects.toThrow(
        'No upcoming elections found',
      );
    });
  });

  describe('API Quota Exhaustion Handling', () => {
    it('should handle 403 quota exceeded error', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 403,
        json: async () => ({
          error: {
            message:
              'The request did not have sufficient authentication scopes.',
            code: 403,
            status: 'PERMISSION_DENIED',
            errors: [
              {
                message: 'Quota exceeded',
                domain: 'usageLimits',
                reason: 'quotaExceeded',
              },
            ],
          },
        }),
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Google Civic API error: 403');
    });

    it('should handle 429 rate limit error', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 429,
        statusText: 'Too Many Requests',
        json: async () => ({ error: { message: 'Rate limit exceeded' } }),
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Google Civic API error: 429 - Rate limit exceeded');
    });

    it('should handle quota error with detailed message', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 403,
        json: async () => ({
          error: {
            message:
              'Quota exceeded for quota metric "Queries" and limit "Queries per day" of service "civicinfo.googleapis.com"',
          },
        }),
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Google Civic API error: 403 - Quota exceeded');
    });
  });

  describe('Invalid Election Date Validation', () => {
    it('should accept valid election date format YYYY-MM-DD', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockVoterInfoResponse,
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2024');

      expect(result.election.electionDay).toMatch(/^\d{4}-\d{2}-\d{2}$/);
    });

    it('should handle election with past date', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          ...mockVoterInfoResponse,
          election: {
            id: '2020',
            name: 'Past Election',
            electionDay: '2020-11-03',
          },
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2020');
      const electionDate = new Date(result.election.electionDay);
      const now = new Date();

      expect(electionDate.getTime()).toBeLessThan(now.getTime());
    });

    it('should handle election with future date', async () => {
      const futureDate = new Date();
      futureDate.setFullYear(futureDate.getFullYear() + 1);
      const futureDateString = futureDate.toISOString().split('T')[0];

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          ...mockVoterInfoResponse,
          election: {
            id: '2030',
            name: 'Future Election',
            electionDay: futureDateString,
          },
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2030');
      const electionDate = new Date(result.election.electionDay);
      const now = new Date();

      expect(electionDate.getTime()).toBeGreaterThan(now.getTime());
    });

    it('should handle malformed election date gracefully', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          ...mockVoterInfoResponse,
          election: {
            id: '2024',
            name: 'Election',
            electionDay: 'invalid-date',
          },
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2024');

      // API returns the data as-is, validation happens at application level
      expect(result.election.electionDay).toBe('invalid-date');
    });
  });

  describe('Test Mode Election ID Handling', () => {
    it('should accept test election ID 2000 when explicitly provided', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          ...mockVoterInfoResponse,
          election: {
            id: '2000',
            name: 'VIP Test Election',
            electionDay: '2025-01-01',
          },
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2000');

      expect(result.election.id).toBe('2000');
    });

    it('should filter out test election 2000 when auto-selecting', async () => {
      fetchMock
        .mockResolvedValueOnce({
          ok: true,
          json: async () => mockElectionsResponse,
        })
        .mockResolvedValueOnce({
          ok: true,
          json: async () => mockVoterInfoResponse,
        });

      await googleCivic.getVoterInfo(validAddress);

      // Second fetch call should be for voterinfo with election 2024 (not 2000)
      const voterInfoCall = fetchMock.mock.calls[1][0];
      expect(voterInfoCall).toContain('electionId=2024');
      expect(voterInfoCall).not.toContain('electionId=2000');
    });

    it('should select earliest non-test election', async () => {
      fetchMock
        .mockResolvedValueOnce({
          ok: true,
          json: async () => ({
            elections: [
              { id: '2000', name: 'VIP Test', electionDay: '2025-01-01' },
              { id: '2026', name: 'Later Election', electionDay: '2026-11-03' },
              {
                id: '2024',
                name: 'Earlier Election',
                electionDay: '2024-11-05',
              },
            ],
          }),
        })
        .mockResolvedValueOnce({
          ok: true,
          json: async () => mockVoterInfoResponse,
        });

      await googleCivic.getVoterInfo(validAddress);

      const voterInfoCall = fetchMock.mock.calls[1][0];
      expect(voterInfoCall).toContain('electionId=2024');
    });
  });

  describe('Malformed API Responses', () => {
    it('should handle missing election field (returns undefined)', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          normalizedInput: mockVoterInfoResponse.normalizedInput,
          contests: mockVoterInfoResponse.contests,
          // Missing election field
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2024');

      // API returns malformed response without throwing
      expect(result.election).toBeUndefined();
    });

    it('should handle missing normalizedInput field', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          election: mockVoterInfoResponse.election,
          contests: mockVoterInfoResponse.contests,
          // Missing normalizedInput field
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2024');

      // Should still return response even if normalizedInput is missing
      expect(result.election).toBeDefined();
    });

    it('should handle empty contests array', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          ...mockVoterInfoResponse,
          contests: [],
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2024');

      expect(result.contests).toEqual([]);
    });

    it('should handle null contests', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => ({
          ...mockVoterInfoResponse,
          contests: null,
        }),
      });

      const result = await googleCivic.getVoterInfo(validAddress, '2024');

      expect(result.contests).toBeNull();
    });

    it('should handle response with invalid JSON', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => {
          throw new Error('Invalid JSON');
        },
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow();
    });

    it('should handle response without error message on failure', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 400,
        statusText: 'Bad Request',
        json: async () => {
          throw new Error('Cannot parse JSON');
        },
      });

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Google Civic API error: 400 - Bad Request');
    });
  });

  describe('getElections', () => {
    it('should fetch elections list successfully', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockElectionsResponse,
      });

      const result = await googleCivic.getElections();

      expect(result.elections).toHaveLength(3);
      expect(result.elections[0].id).toBe('2000');
    });

    it('should handle API error when fetching elections', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 500,
        statusText: 'Internal Server Error',
      });

      await expect(googleCivic.getElections()).rejects.toThrow(
        'Failed to fetch elections: Internal Server Error',
      );
    });

    it('should include API key in request', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockElectionsResponse,
      });

      await googleCivic.getElections();

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('key=test-api-key');
    });
  });

  describe('getRepresentativeInfoByAddress', () => {
    const mockRepresentativeResponse = {
      offices: [
        {
          name: 'U.S. Senator',
          divisionId: 'ocd-division/country:us/state:ca',
          officialIndices: [0, 1],
        },
      ],
      officials: [
        {
          name: 'Dianne Feinstein',
          party: 'Democratic',
        },
        {
          name: 'Alex Padilla',
          party: 'Democratic',
        },
      ],
    };

    it('should fetch representative info successfully', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockRepresentativeResponse,
      });

      const result =
        await googleCivic.getRepresentativeInfoByAddress(validAddress);

      expect(result.offices).toBeDefined();
      expect(result.officials).toBeDefined();
    });

    it('should handle API error with error message', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: false,
        status: 404,
        json: async () => ({
          error: { message: 'No representatives found' },
        }),
      });

      await expect(
        googleCivic.getRepresentativeInfoByAddress(validAddress),
      ).rejects.toThrow(
        'Google Civic API error: 404 - No representatives found',
      );
    });

    it('should format address correctly in URL', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockRepresentativeResponse,
      });

      await googleCivic.getRepresentativeInfoByAddress(validAddress);

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('address=1600+Amphitheatre+Parkway');
    });
  });

  describe('extractCongressionalDistrict', () => {
    it('should extract congressional district from division results', () => {
      const mockDivisions = {
        results: [
          {
            ocdId: 'ocd-division/country:us/state:ca/cd:12',
            name: 'California Congressional District 12',
          },
        ],
      };

      const result = GoogleCivicAPI.extractCongressionalDistrict(mockDivisions);

      expect(result).toEqual({ state: 'CA', district: '12' });
    });

    it('should return null if no congressional district found', () => {
      const mockDivisions = {
        results: [
          {
            ocdId: 'ocd-division/country:us/state:ca',
            name: 'California',
          },
        ],
      };

      const result = GoogleCivicAPI.extractCongressionalDistrict(mockDivisions);

      expect(result).toBeNull();
    });

    it('should return null if divisions is null', () => {
      const result = GoogleCivicAPI.extractCongressionalDistrict(null);

      expect(result).toBeNull();
    });

    it('should return null if results is missing', () => {
      const result = GoogleCivicAPI.extractCongressionalDistrict({});

      expect(result).toBeNull();
    });

    it('should handle at-large districts (cd:0)', () => {
      const mockDivisions = {
        results: [
          {
            ocdId: 'ocd-division/country:us/state:mt/cd:0',
            name: 'Montana At-Large',
          },
        ],
      };

      const result = GoogleCivicAPI.extractCongressionalDistrict(mockDivisions);

      expect(result).toEqual({ state: 'MT', district: '0' });
    });

    it('should return uppercase state code', () => {
      const mockDivisions = {
        results: [
          {
            ocdId: 'ocd-division/country:us/state:ny/cd:15',
            name: 'New York Congressional District 15',
          },
        ],
      };

      const result = GoogleCivicAPI.extractCongressionalDistrict(mockDivisions);

      expect(result?.state).toBe('NY');
    });
  });

  describe('normalizeAddress', () => {
    it('should normalize address from Google Civic response', () => {
      const normalizedInput = {
        line1: '1600 Amphitheatre Parkway',
        city: 'Mountain View',
        state: 'CA',
        zip: '94043',
      };

      const result = GoogleCivicAPI.normalizeAddress(normalizedInput);

      expect(result).toEqual({
        line1: '1600 Amphitheatre Parkway',
        city: 'Mountain View',
        state: 'CA',
        zip: '94043',
        normalized: '1600 Amphitheatre Parkway, Mountain View, CA 94043',
      });
    });

    it('should create normalized string correctly', () => {
      const normalizedInput = {
        line1: '123 Main St',
        city: 'San Francisco',
        state: 'CA',
        zip: '94102',
      };

      const result = GoogleCivicAPI.normalizeAddress(normalizedInput);

      expect(result.normalized).toBe('123 Main St, San Francisco, CA 94102');
    });
  });

  describe('Address Formatting', () => {
    it('should format address with all components', async () => {
      const fullAddress: Address = {
        line1: '123 Main St',
        line2: 'Apt 4B',
        city: 'San Francisco',
        state: 'CA',
        zip: '94102',
      };

      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockVoterInfoResponse,
      });

      await googleCivic.getVoterInfo(fullAddress, '2024');

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('123+Main+St');
      expect(callUrl).toContain('Apt+4B');
      expect(callUrl).toContain('San+Francisco');
      expect(callUrl).toContain('CA');
      expect(callUrl).toContain('94102');
    });

    it('should format address without line2', async () => {
      fetchMock.mockResolvedValueOnce({
        ok: true,
        json: async () => mockVoterInfoResponse,
      });

      await googleCivic.getVoterInfo(validAddress, '2024');

      const callUrl = fetchMock.mock.calls[0][0];
      expect(callUrl).toContain('1600+Amphitheatre+Parkway');
    });
  });

  describe('Network Error Handling', () => {
    it('should handle network timeout', async () => {
      fetchMock.mockRejectedValueOnce(new Error('Request timeout'));

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('Request timeout');
    });

    it('should handle DNS resolution failure', async () => {
      fetchMock.mockRejectedValueOnce(new Error('getaddrinfo ENOTFOUND'));

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('getaddrinfo ENOTFOUND');
    });

    it('should handle connection refused', async () => {
      fetchMock.mockRejectedValueOnce(new Error('ECONNREFUSED'));

      await expect(
        googleCivic.getVoterInfo(validAddress, '2024'),
      ).rejects.toThrow('ECONNREFUSED');
    });
  });
});
