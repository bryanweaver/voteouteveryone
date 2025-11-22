import { Ballot } from '@/types/ballot';
import { BallotCard } from './BallotCard';

interface BallotListProps {
  ballot: Ballot;
}

export function BallotList({ ballot }: BallotListProps) {
  // Group contests by level
  const federalContests = ballot.contests.filter((c) => c.level === 'federal');
  const stateContests = ballot.contests.filter((c) => c.level === 'state');
  const localContests = ballot.contests.filter((c) => c.level === 'local');

  return (
    <div className="space-y-8">
      {/* Election Info */}
      <div className="bg-white border-4 border-black p-6">
        <h2 className="text-2xl font-black uppercase mb-3">
          {ballot.electionName}
        </h2>
        <p className="font-mono text-sm mb-1">
          <strong>DATE:</strong>{' '}
          {new Date(ballot.electionDate).toLocaleDateString('en-US', {
            weekday: 'long',
            year: 'numeric',
            month: 'long',
            day: 'numeric',
          })}
        </p>
        <p className="font-mono text-sm">
          <strong>ADDRESS:</strong> {ballot.address.normalized}
        </p>
      </div>

      {/* Polling Location */}
      {ballot.pollingLocation && (
        <div className="bg-white border-4 border-black p-6">
          <h3 className="font-black text-lg uppercase mb-3">
            POLLING LOCATION
          </h3>
          {ballot.pollingLocation.name && (
            <p className="font-mono font-bold mb-2">{ballot.pollingLocation.name}</p>
          )}
          <p className="font-mono text-sm">
            {ballot.pollingLocation.address.line1}
            {ballot.pollingLocation.address.line2 &&
              `, ${ballot.pollingLocation.address.line2}`}
            <br />
            {ballot.pollingLocation.address.city},{' '}
            {ballot.pollingLocation.address.state}{' '}
            {ballot.pollingLocation.address.zip}
          </p>
          {ballot.pollingLocation.hours && (
            <p className="font-mono text-sm mt-2">
              <strong>HOURS:</strong> {ballot.pollingLocation.hours}
            </p>
          )}
        </div>
      )}

      {/* Legend */}
      <div className="bg-white border-4 border-black p-4">
        <div className="flex items-center gap-6 flex-wrap font-mono text-sm">
          <div className="flex items-center gap-2">
            <span className="text-2xl">✓</span>
            <span className="uppercase">
              = NON-INCUMBENT
            </span>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-2xl">✗</span>
            <span className="uppercase">
              = INCUMBENT
            </span>
          </div>
        </div>
      </div>

      {/* Federal Contests */}
      {federalContests.length > 0 && (
        <div>
          <h2 className="text-3xl font-black uppercase mb-4 border-b-4 border-black pb-2">
            FEDERAL RACES
          </h2>
          <div className="space-y-4">
            {federalContests.map((contest, index) => (
              <BallotCard key={index} contest={contest} />
            ))}
          </div>
        </div>
      )}

      {/* State Contests */}
      {stateContests.length > 0 && (
        <div>
          <h2 className="text-3xl font-black uppercase mb-4 border-b-4 border-black pb-2">
            STATE RACES
          </h2>
          <div className="space-y-4">
            {stateContests.map((contest, index) => (
              <BallotCard key={index} contest={contest} />
            ))}
          </div>
        </div>
      )}

      {/* Local Contests */}
      {localContests.length > 0 && (
        <div>
          <h2 className="text-3xl font-black uppercase mb-4 border-b-4 border-black pb-2">
            LOCAL RACES
          </h2>
          <div className="space-y-4">
            {localContests.map((contest, index) => (
              <BallotCard key={index} contest={contest} />
            ))}
          </div>
        </div>
      )}

      {/* No contests found */}
      {ballot.contests.length === 0 && (
        <div className="bg-white border-4 border-black p-6 text-center">
          <p className="font-mono text-sm">
            NO CONTESTS FOUND FOR THIS ADDRESS
          </p>
          <p className="font-mono text-xs mt-2 text-gray-600">
            There may not be an upcoming election, or data may not be available yet.
          </p>
        </div>
      )}
    </div>
  );
}
