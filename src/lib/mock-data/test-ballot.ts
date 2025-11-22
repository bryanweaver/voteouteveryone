// Mock ballot data for testing when NEXT_PUBLIC_TEST_MODE=true
// This gives you realistic ballot data to test the UI

import type { Ballot } from '@/types/ballot';

export const MOCK_BALLOT: Ballot = {
  id: 'ballot_test_mock',
  address: {
    line1: '1600 Pennsylvania Avenue NW',
    city: 'Washington',
    state: 'DC',
    zip: '20500',
    normalized: '1600 Pennsylvania Avenue NW, Washington, DC 20500',
  },
  electionDate: '2024-11-05',
  electionName: 'General Election - November 2024 (TEST DATA)',
  contests: [
    {
      office: 'President of the United States',
      district: undefined,
      candidates: [
        {
          name: 'Joe Biden',
          party: 'D',
          isIncumbent: true, // Incumbent president
        },
        {
          name: 'Donald J. Trump',
          party: 'R',
          isIncumbent: false,
        },
        {
          name: 'Chase Oliver',
          party: 'L',
          isIncumbent: false,
        },
        {
          name: 'Jill Stein',
          party: 'G',
          isIncumbent: false,
        },
      ],
      level: 'federal',
      type: 'General',
      numberElected: 1,
    },
    {
      office: 'U.S. Senator',
      district: undefined,
      candidates: [
        {
          name: 'John Incumbent',
          party: 'D',
          isIncumbent: true,
        },
        {
          name: 'Sarah Challenger',
          party: 'R',
          isIncumbent: false,
        },
        {
          name: 'Bob Independent',
          party: 'I',
          isIncumbent: false,
        },
      ],
      level: 'federal',
      type: 'General',
      numberElected: 1,
    },
    {
      office: 'U.S. Representative District 7',
      district: 'District 7',
      candidates: [
        {
          name: 'Mary Incumbent',
          party: 'R',
          isIncumbent: true,
        },
        {
          name: 'Tom Challenger',
          party: 'D',
          isIncumbent: false,
        },
      ],
      level: 'federal',
      type: 'General',
      numberElected: 1,
    },
    {
      office: 'Governor',
      district: undefined,
      candidates: [
        {
          name: 'Jane Incumbent',
          party: 'D',
          isIncumbent: true,
        },
        {
          name: 'Mike Challenger',
          party: 'R',
          isIncumbent: false,
        },
        {
          name: 'Lisa Independent',
          party: 'I',
          isIncumbent: false,
        },
      ],
      level: 'state',
      type: 'General',
      numberElected: 1,
    },
    {
      office: 'State Senator District 12',
      district: 'District 12',
      candidates: [
        {
          name: 'Robert Incumbent',
          party: 'R',
          isIncumbent: true,
        },
        {
          name: 'Jennifer Challenger',
          party: 'D',
          isIncumbent: false,
        },
      ],
      level: 'state',
      type: 'General',
      numberElected: 1,
    },
    {
      office: 'Mayor',
      district: undefined,
      candidates: [
        {
          name: 'David Incumbent',
          party: 'NP',
          isIncumbent: true,
        },
        {
          name: 'Emily Challenger',
          party: 'NP',
          isIncumbent: false,
        },
        {
          name: 'Chris Alternative',
          party: 'NP',
          isIncumbent: false,
        },
      ],
      level: 'local',
      type: 'General',
      numberElected: 1,
    },
    {
      office: 'City Council Member At-Large',
      district: 'At-Large',
      candidates: [
        {
          name: 'Susan Incumbent',
          party: 'NP',
          isIncumbent: true,
        },
        {
          name: 'Mark Incumbent',
          party: 'NP',
          isIncumbent: true,
        },
        {
          name: 'Rachel Challenger',
          party: 'NP',
          isIncumbent: false,
        },
        {
          name: 'Kevin Challenger',
          party: 'NP',
          isIncumbent: false,
        },
        {
          name: 'Amy Challenger',
          party: 'NP',
          isIncumbent: false,
        },
      ],
      level: 'local',
      type: 'General',
      numberElected: 3,
    },
  ],
  pollingLocation: {
    name: 'Community Center',
    address: {
      line1: '123 Main Street',
      city: 'Anytown',
      state: 'DC',
      zip: '20001',
    },
    hours: '7:00 AM - 8:00 PM',
    notes: 'Accessible parking available in rear lot. Bring photo ID.',
  },
  generatedAt: new Date().toISOString(),
};
