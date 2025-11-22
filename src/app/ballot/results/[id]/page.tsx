import { supabaseClient } from '@/lib/db/server-side/supabase-client';
import { BallotTabs } from '@/components/ballot/BallotTabs';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import type { Ballot } from '@/types/ballot';

interface PageProps {
  params: {
    id: string;
  };
}

export default async function BallotResultsPage({ params }: PageProps) {
  const { id } = params;

  // Fetch ballot from database
  const { data, error } = await supabaseClient
    .from('ballot_cache')
    .select('ballot_data')
    .eq('election_id', id)
    .single();

  if (error || !data) {
    notFound();
  }

  const ballot: Ballot = data.ballot_data as unknown as Ballot;

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
          <h1 className="text-5xl font-black uppercase leading-tight border-b-4 border-black pb-4">
            {ballot.electionName}
          </h1>
          <p className="font-mono text-sm text-gray-600 mt-2">
            Election Day: {new Date(ballot.electionDate).toLocaleDateString()}
          </p>
        </div>

        {/* Tabbed Content */}
        <BallotTabs ballot={ballot} />
      </div>
    </div>
  );
}
