import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { RepresentativesService } from '@/lib/services/representatives-service';
import type { Address } from '@/types/ballot';

// Zod schema for address validation
const addressSchema = z.object({
  line1: z.string().min(1).max(200).trim(),
  line2: z.string().max(200).trim().optional(),
  city: z.string().min(1).max(100).trim(),
  state: z.string().length(2).regex(/^[A-Z]{2}$/),
  zip: z.string().regex(/^\d{5}(-\d{4})?$/),
});

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    if (!body.address) {
      return NextResponse.json(
        { error: 'Missing address in request body' },
        { status: 400 }
      );
    }

    // Validate address
    const validationResult = addressSchema.safeParse(body.address);

    if (!validationResult.success) {
      const errors = validationResult.error.errors.map(err => ({
        field: err.path.join('.'),
        message: err.message,
      }));

      return NextResponse.json(
        { error: 'Invalid address format', details: errors },
        { status: 400 }
      );
    }

    const address = validationResult.data as Address;

    // Get API keys
    const openStatesApiKey = process.env.OPENSTATES_API_KEY || '';
    const googleCivicApiKey = process.env.GOOGLE_CIVIC_API_KEY;

    if (!googleCivicApiKey) {
      return NextResponse.json(
        { error: 'Google Civic API key not configured' },
        { status: 500 }
      );
    }

    // Fetch representatives
    // OpenStates API key is optional - federal reps will still work without it
    const repsService = new RepresentativesService(openStatesApiKey, googleCivicApiKey);
    const representatives = await repsService.getRepresentatives(address);

    return NextResponse.json(representatives);
  } catch (error) {
    console.error('Error in /api/representatives:', error);

    return NextResponse.json(
      {
        error: 'Failed to fetch representatives',
        details: error instanceof Error ? error.message : 'Unknown error',
      },
      { status: 500 }
    );
  }
}
