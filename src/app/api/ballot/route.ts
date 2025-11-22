import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { BallotService } from '@/lib/services/ballot-service';
import { supabaseClient } from '@/lib/db/server-side/supabase-client';
import type { Address } from '@/types/ballot';

// Zod schema for address validation with security constraints
const addressSchema = z.object({
  line1: z.string()
    .min(1, 'Street address is required')
    .max(200, 'Street address too long')
    .trim(),
  line2: z.string()
    .max(200, 'Address line 2 too long')
    .trim()
    .optional(),
  city: z.string()
    .min(1, 'City is required')
    .max(100, 'City name too long')
    .trim(),
  state: z.string()
    .length(2, 'State must be 2-letter code (e.g. CA, TX)')
    .regex(/^[A-Z]{2}$/, 'State must be uppercase 2-letter US state code')
    .trim(),
  zip: z.string()
    .regex(/^\d{5}(-\d{4})?$/, 'ZIP code must be 5 digits (e.g. 90210) or 9 digits (e.g. 90210-1234)')
    .trim(),
});

export async function POST(request: NextRequest) {
  // TODO: Add rate limiting before production deployment
  // Recommended: Use Vercel Edge Config or Upstash Redis
  // Limit: 10 requests per IP per hour to prevent API abuse
  // Reference: https://vercel.com/docs/edge-network/edge-config
  // Alternative: https://github.com/upstash/ratelimit

  try {
    const body = await request.json();

    // Validate request body structure
    if (!body.address) {
      return NextResponse.json(
        { error: 'Missing address in request body' },
        { status: 400 }
      );
    }

    // Validate address with Zod schema
    const validationResult = addressSchema.safeParse(body.address);

    if (!validationResult.success) {
      const errors = validationResult.error.errors.map(err => ({
        field: err.path.join('.'),
        message: err.message,
      }));

      return NextResponse.json(
        {
          error: 'Invalid address format',
          details: errors
        },
        { status: 400 }
      );
    }

    // Type assertion safe because Zod validation ensures all required fields
    const address = validationResult.data as Address;

    // Check for test mode (use mock data for any address)
    const testMode = body.testMode === true;

    // If test mode, return mock data immediately
    if (testMode) {
      console.log('🧪 TEST MODE: Returning mock ballot data');
      const { MOCK_BALLOT } = await import('@/lib/mock-data/test-ballot');

      // Customize mock ballot with user's address
      const mockBallot = {
        ...MOCK_BALLOT,
        id: `ballot_test_${Date.now()}`,
        address: {
          ...address,
          normalized: `${address.line1}, ${address.city}, ${address.state} ${address.zip}`,
        },
        generatedAt: new Date().toISOString(),
      };

      // Cache the mock ballot so results page can find it
      const expiresAt = new Date();
      expiresAt.setHours(expiresAt.getHours() + 24); // Cache for 24 hours

      const cacheKey = `TEST-${address.line1}${address.city}${address.state}${address.zip}`
        .toLowerCase()
        .replace(/\s+/g, '');

      await supabaseClient.from('ballot_cache').insert({
        normalized_address: cacheKey,
        election_id: mockBallot.id,
        ballot_data: mockBallot as any,
        expires_at: expiresAt.toISOString(),
      });

      // Log usage
      await supabaseClient.from('usage_stats').insert({
        event_type: 'ballot_lookup',
        state: address.state,
        zip_code: address.zip,
      });

      return NextResponse.json(mockBallot);
    }

    // Create cache key from address
    const cacheKey = `${address.line1}${address.city}${address.state}${address.zip}`
      .toLowerCase()
      .replace(/\s+/g, '');

    // Check cache first (avoid hitting API limits)
    const { data: cached } = await supabaseClient
      .from('ballot_cache')
      .select('*')
      .eq('normalized_address', cacheKey)
      .gt('expires_at', new Date().toISOString())
      .single();

    if (cached) {
      console.log('✅ Returning cached ballot');

      // Log usage
      await supabaseClient.from('usage_stats').insert({
        event_type: 'ballot_lookup',
        state: address.state,
        zip_code: address.zip,
      });

      return NextResponse.json(cached.ballot_data);
    }

    // Fetch fresh ballot data
    const googleCivicApiKey = process.env.GOOGLE_CIVIC_API_KEY;
    if (!googleCivicApiKey) {
      return NextResponse.json(
        { error: 'Google Civic API key not configured' },
        { status: 500 }
      );
    }

    console.log('🔍 Fetching fresh ballot data from Google Civic API...');
    const ballotService = new BallotService(googleCivicApiKey);

    let ballot;
    let expiresAt;

    try {
      ballot = await ballotService.getBallot(address);
      // Cache result (expires day after election)
      expiresAt = new Date(ballot.electionDate);
      expiresAt.setDate(expiresAt.getDate() + 1);
    } catch (error) {
      // Handle "No upcoming elections" case
      if (error instanceof Error && error.message.includes('No upcoming elections')) {
        console.log('ℹ️ No upcoming elections, creating empty ballot for representatives view');

        // Create a minimal ballot with no contests
        ballot = {
          id: `no-election-${Date.now()}`,
          address,
          electionDate: new Date().toISOString(),
          electionName: 'No Upcoming Elections',
          contests: [],
          generatedAt: new Date().toISOString(),
        };

        // Cache for 24 hours
        expiresAt = new Date();
        expiresAt.setHours(expiresAt.getHours() + 24);
      } else {
        // Re-throw other errors
        throw error;
      }
    }

    const { error: cacheError } = await supabaseClient.from('ballot_cache').insert({
      normalized_address: cacheKey,
      election_id: ballot.id,
      ballot_data: ballot as any,
      expires_at: expiresAt.toISOString(),
    });

    if (cacheError) {
      console.error('Error caching ballot:', cacheError);
      // Continue anyway - caching is not critical
    }

    // Log usage
    await supabaseClient.from('usage_stats').insert({
      event_type: 'ballot_lookup',
      state: address.state,
      zip_code: address.zip,
    });

    console.log('✅ Ballot fetched and cached successfully');
    return NextResponse.json(ballot);
  } catch (error) {
    console.error('Error in /api/ballot:', error);

    return NextResponse.json(
      {
        error: 'Failed to fetch ballot data',
        details: error instanceof Error ? error.message : 'Unknown error',
      },
      { status: 500 }
    );
  }
}
