import { Contest } from '@/types/ballot';
import { CandidateItem } from './CandidateItem';

interface BallotCardProps {
  contest: Contest;
}

export function BallotCard({ contest }: BallotCardProps) {
  const isBallotMeasure = contest.type === 'ballot-measure' || contest.candidates.length === 0;
  const allIncumbents = contest.candidates.every((c) => c.isIncumbent);
  const noIncumbents = contest.candidates.every((c) => !c.isIncumbent);

  // Sort candidates: non-incumbents first
  const sortedCandidates = [...contest.candidates].sort((a, b) => {
    if (a.isIncumbent === b.isIncumbent) return 0;
    return a.isIncumbent ? 1 : -1;
  });

  return (
    <div className="bg-white border-4 border-black">
      {/* Header */}
      <div className="bg-black text-white px-6 py-4">
        <div className="flex items-center justify-between gap-4">
          <div>
            <h3 className="text-lg font-black uppercase">
              {contest.office || 'Ballot Measure'}
            </h3>
            {contest.district && (
              <p className="text-sm font-mono mt-1">{contest.district}</p>
            )}
          </div>
          <span className="font-mono text-xs uppercase px-3 py-1 bg-white text-black">
            {contest.level}
          </span>
        </div>
      </div>

      {/* Special cases - only for candidate races */}
      {!isBallotMeasure && allIncumbents && (
        <div className="bg-white border-b-4 border-black px-6 py-4">
          <p className="font-mono text-sm font-bold">
            ⚠ ALL INCUMBENTS
          </p>
          <p className="font-mono text-xs mt-1">
            Consider researching their records or writing in a candidate.
          </p>
        </div>
      )}

      {!isBallotMeasure && noIncumbents && (
        <div className="bg-white border-b-4 border-black px-6 py-4">
          <p className="font-mono text-sm font-bold">
            ℹ OPEN SEAT
          </p>
          <p className="font-mono text-xs mt-1">
            No incumbent running. All candidates are new to this office.
          </p>
        </div>
      )}

      {/* Ballot measure note */}
      {isBallotMeasure && (
        <div className="bg-white border-b-4 border-black px-6 py-4">
          <p className="font-mono text-sm font-bold">
            📋 BALLOT MEASURE
          </p>
          <p className="font-mono text-xs mt-1">
            Research this measure and vote YES or NO. Details not available in API.
          </p>
        </div>
      )}

      {/* Candidates */}
      {!isBallotMeasure && (
        <div className="px-6 py-4 space-y-3">
          {sortedCandidates.map((candidate, index) => (
            <CandidateItem key={index} candidate={candidate} />
          ))}
        </div>
      )}

      {/* Footer info */}
      {contest.numberElected && contest.numberElected > 1 && (
        <div className="bg-white border-t-4 border-black px-6 py-3">
          <p className="font-mono text-xs uppercase">
            SELECT UP TO {contest.numberElected} CANDIDATE{contest.numberElected > 1 ? 'S' : ''}
          </p>
        </div>
      )}
    </div>
  );
}
