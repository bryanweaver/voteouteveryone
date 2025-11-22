'use client';

import { useState, useEffect } from 'react';
import { useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { RepresentativeSection } from '@/components/representatives/RepresentativeCard';
import type { RepresentativesLookup } from '@/types/ballot';

export default function RepresentativesPage() {
  const searchParams = useSearchParams();
  const [data, setData] = useState<RepresentativesLookup | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchRepresentatives = async () => {
      try {
        const addressData = {
          line1: searchParams.get('line1') || '',
          line2: searchParams.get('line2') || undefined,
          city: searchParams.get('city') || '',
          state: searchParams.get('state') || '',
          zip: searchParams.get('zip') || '',
        };

        const response = await fetch('/api/representatives', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ address: addressData }),
        });

        if (!response.ok) {
          const errorData = await response.json();
          throw new Error(errorData.error || 'Failed to fetch representatives');
        }

        const result = await response.json();
        setData(result);
      } catch (err) {
        console.error('Error fetching representatives:', err);
        setError(
          err instanceof Error ? err.message : 'Failed to fetch representatives'
        );
      } finally {
        setIsLoading(false);
      }
    };

    fetchRepresentatives();
  }, [searchParams]);

  if (isLoading) {
    return (
      <div className="min-h-screen bg-white py-8 flex items-center justify-center">
        <p className="font-mono text-lg uppercase">LOADING YOUR REPRESENTATIVES...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen bg-white py-8">
        <div className="container mx-auto px-4 max-w-4xl">
          <div className="bg-white border-4 border-black p-6">
            <h1 className="text-3xl font-black uppercase mb-4">ERROR</h1>
            <p className="font-mono text-sm">{error}</p>
            <Link
              href="/"
              className="mt-4 inline-block bg-black text-white px-6 py-3 font-mono text-sm uppercase hover:bg-gray-800 transition-colors border-2 border-black"
            >
              ← BACK TO HOME
            </Link>
          </div>
        </div>
      </div>
    );
  }

  if (!data) return null;

  const totalReps = data.federal.length + data.state.length + data.local.length;

  return (
    <div className="min-h-screen bg-white py-8">
      <div className="container mx-auto px-4 max-w-4xl">
        {/* Header */}
        <div className="mb-8">
          <Link
            href="/"
            className="font-mono text-sm mb-4 inline-block border-b-2 border-black hover:bg-black hover:text-white px-2 py-1 transition-colors"
          >
            ← HOME
          </Link>
          <h1 className="text-5xl font-black uppercase leading-tight border-b-4 border-black pb-4 mb-4">
            WHO REPRESENTS YOU
          </h1>
          <p className="font-mono text-lg mb-2">
            {data.address.normalized || `${data.address.city}, ${data.address.state} ${data.address.zip}`}
          </p>
          <p className="font-mono text-sm text-gray-600">
            Found {totalReps} representative{totalReps !== 1 ? 's' : ''}
          </p>
        </div>

        {/* Info */}
        <div className="bg-white border-4 border-black p-6 mb-8">
          <p className="font-mono text-sm mb-2">
            These people currently represent you in government. When there's an election, come back to see who's challenging them.
          </p>
          <p className="font-mono text-xs text-gray-600">
            Data sources: VoteOut database (federal), OpenStates (state)
          </p>
        </div>

        <div className="space-y-8">
          {/* Federal Representatives */}
          {data.federal.length > 0 && (
            <RepresentativeSection title="FEDERAL" reps={data.federal} />
          )}

          {/* State Representatives */}
          {data.state.length > 0 && (
            <RepresentativeSection title="STATE" reps={data.state} />
          )}

          {/* Local Representatives */}
          {data.local.length > 0 && (
            <RepresentativeSection title="LOCAL" reps={data.local} />
          )}

          {/* No data message */}
          {totalReps === 0 && (
            <div className="bg-white border-4 border-black p-6 text-center">
              <p className="font-mono text-sm">
                NO REPRESENTATIVES FOUND
              </p>
              <p className="font-mono text-xs mt-2 text-gray-600">
                We couldn't find representative data for this address. This may be a data availability issue.
              </p>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
