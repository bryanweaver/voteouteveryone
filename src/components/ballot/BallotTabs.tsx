'use client';

import { useState, useEffect } from 'react';
import { BallotList } from './BallotList';
import { PrintButton } from './PrintButton';
import { PocketCard } from './PocketCard';
import { RepresentativeSection } from '@/components/representatives/RepresentativeCard';
import Link from 'next/link';
import type { Ballot, RepresentativesLookup } from '@/types/ballot';

interface BallotTabsProps {
  ballot: Ballot;
}

type Tab = 'ballot' | 'representatives';

export function BallotTabs({ ballot }: BallotTabsProps) {
  const [activeTab, setActiveTab] = useState<Tab>('ballot');
  const [repsData, setRepsData] = useState<RepresentativesLookup | null>(null);
  const [isLoadingReps, setIsLoadingReps] = useState(false);
  const [repsError, setRepsError] = useState<string | null>(null);
  const [printHandler, setPrintHandler] = useState<(() => void) | null>(null);

  // Fetch representatives data when tab is clicked
  useEffect(() => {
    if (activeTab === 'representatives' && !repsData && !isLoadingReps && !repsError) {
      fetchRepresentatives();
    }
  }, [activeTab]);

  const fetchRepresentatives = async () => {
    setIsLoadingReps(true);
    setRepsError(null);

    try {
      const response = await fetch('/api/representatives', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ address: ballot.address }),
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.error || 'Failed to fetch representatives');
      }

      const result = await response.json();
      setRepsData(result);
    } catch (err) {
      console.error('Error fetching representatives:', err);
      setRepsError(
        err instanceof Error ? err.message : 'Failed to fetch representatives'
      );
    } finally {
      setIsLoadingReps(false);
    }
  };

  const totalReps = repsData
    ? repsData.federal.length + repsData.state.length + repsData.local.length
    : 0;

  return (
    <div>
      {/* Tabs */}
      <div className="border-4 border-black mb-8">
        <div className="flex">
          <button
            onClick={() => setActiveTab('ballot')}
            className={`flex-1 px-6 py-4 font-mono text-sm uppercase transition-colors border-r-4 border-black ${
              activeTab === 'ballot'
                ? 'bg-black text-white'
                : 'bg-white text-black hover:bg-gray-100'
            }`}
          >
            YOUR BALLOT
          </button>
          <button
            onClick={() => setActiveTab('representatives')}
            className={`flex-1 px-6 py-4 font-mono text-sm uppercase transition-colors ${
              activeTab === 'representatives'
                ? 'bg-black text-white'
                : 'bg-white text-black hover:bg-gray-100'
            }`}
          >
            YOUR REPRESENTATIVES
          </button>
        </div>
      </div>

      {/* Ballot View */}
      {activeTab === 'ballot' && (
        <>
          {/* No Election Message */}
          {ballot.contests.length === 0 && (
            <div className="bg-white border-4 border-black p-8 mb-8 text-center">
              <h3 className="text-3xl font-black uppercase mb-4">
                NO UPCOMING ELECTIONS
              </h3>
              <p className="font-mono text-sm mb-6">
                There are no upcoming elections scheduled for your area right now.
              </p>
              <button
                onClick={() => setActiveTab('representatives')}
                className="bg-black text-white px-8 py-4 font-mono text-sm uppercase hover:bg-gray-800 transition-colors border-2 border-black"
              >
                SEE WHO REPRESENTS YOU →
              </button>
            </div>
          )}

          {/* THE CARD - Primary Focus */}
          {ballot.contests.length > 0 && (
            <>
              {/* Header */}
              <div className="mb-6 text-center">
                <h2 className="text-5xl font-black uppercase leading-tight mb-2">
                  YOUR POCKET CARD
                </h2>
                <p className="font-mono text-lg text-gray-700">
                  Print this. Take it to the polls.
                </p>
              </div>

              {/* Pocket Card */}
              <div className="mb-6 flex justify-center">
                <PocketCard
                  ballot={ballot}
                  onPrintHandler={(handler) => setPrintHandler(() => handler)}
                />
              </div>

              {/* Print Button */}
              <div className="mb-12 flex justify-center">
                <button
                  onClick={printHandler || undefined}
                  className="bg-black text-white px-12 py-6 font-mono text-xl font-black uppercase hover:bg-gray-800 transition-colors border-4 border-black shadow-lg"
                >
                  🖨 PRINT POCKET CARD
                </button>
              </div>

              {/* Collapsible Full Ballot Details */}
              <details className="bg-white border-4 border-black mb-8">
                <summary className="cursor-pointer p-6 font-black text-2xl uppercase hover:bg-gray-100 transition-colors">
                  SEE FULL BALLOT DETAILS
                </summary>
                <div className="p-6 border-t-4 border-black">
                  <p className="font-mono text-sm mb-6 text-gray-600">
                    Complete list of all candidates. Non-incumbents highlighted.
                  </p>
                  <BallotList ballot={ballot} />
                </div>
              </details>

              {/* Footer */}
              <div className="p-6 bg-white border-4 border-black">
                <h3 className="font-black text-lg uppercase mb-3">
                  ABOUT
                </h3>
                <p className="font-mono text-sm mb-4 leading-relaxed">
                  Strictly nonpartisan. We identify incumbents from all political parties equally. No endorsements. You decide.
                </p>
                <p className="font-mono text-xs text-gray-600">
                  Data: Google Civic Information API, Ballotpedia<br />
                  Generated: {new Date(ballot.generatedAt).toLocaleString()}<br />
                  Not authorized by any candidate or political committee
                </p>
              </div>
            </>
          )}
        </>
      )}

      {/* Representatives View */}
      {activeTab === 'representatives' && (
        <>
          {/* Header */}
          <div className="mb-8">
            <h2 className="text-4xl font-black uppercase leading-tight border-b-4 border-black pb-4 mb-4">
              WHO REPRESENTS YOU
            </h2>
            <p className="font-mono text-lg mb-2">
              {ballot.address.normalized || `${ballot.address.city}, ${ballot.address.state} ${ballot.address.zip}`}
            </p>
            {repsData && (
              <p className="font-mono text-sm text-gray-600">
                Found {totalReps} representative{totalReps !== 1 ? 's' : ''}
              </p>
            )}
          </div>

          {/* Loading State */}
          {isLoadingReps && (
            <div className="bg-white border-4 border-black p-12 text-center">
              <p className="font-mono text-lg uppercase">
                LOADING YOUR REPRESENTATIVES...
              </p>
            </div>
          )}

          {/* Error State */}
          {repsError && (
            <div className="bg-white border-4 border-black p-6">
              <h3 className="text-xl font-black uppercase mb-4">ERROR</h3>
              <p className="font-mono text-sm mb-4">{repsError}</p>
              <button
                onClick={fetchRepresentatives}
                className="bg-black text-white px-6 py-3 font-mono text-sm uppercase hover:bg-gray-800 transition-colors border-2 border-black"
              >
                TRY AGAIN
              </button>
            </div>
          )}

          {/* Representatives Data */}
          {repsData && !isLoadingReps && !repsError && (
            <>
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
                {repsData.federal.length > 0 && (
                  <RepresentativeSection title="FEDERAL" reps={repsData.federal} />
                )}

                {/* State Representatives */}
                {repsData.state.length > 0 && (
                  <RepresentativeSection title="STATE" reps={repsData.state} />
                )}

                {/* Local Representatives */}
                {repsData.local.length > 0 && (
                  <RepresentativeSection title="LOCAL" reps={repsData.local} />
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
            </>
          )}
        </>
      )}
    </div>
  );
}
