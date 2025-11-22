import { Candidate } from '@/types/ballot';
import { IncumbentBadge } from './IncumbentBadge';
import { cn } from '@/lib/utils';

interface CandidateItemProps {
  candidate: Candidate;
  className?: string;
}

export function CandidateItem({ candidate, className }: CandidateItemProps) {
  return (
    <div
      className={cn(
        'flex items-start gap-3 py-3 px-4 border-2 border-black',
        candidate.isIncumbent
          ? 'bg-gray-100'
          : 'bg-white',
        className
      )}
    >
      <div className="flex-shrink-0 mt-1">
        {candidate.isIncumbent ? (
          <span className="font-bold text-xl">✗</span>
        ) : (
          <span className="font-bold text-xl">✓</span>
        )}
      </div>

      <div className="flex-1 min-w-0">
        <div className="flex items-center gap-2 flex-wrap">
          <h4
            className={cn(
              'font-black text-base uppercase',
              candidate.isIncumbent && 'line-through opacity-60'
            )}
          >
            {candidate.name}
          </h4>
          <span className="font-mono text-xs">({candidate.party})</span>
        </div>

        <div className="mt-1">
          <IncumbentBadge
            isIncumbent={candidate.isIncumbent}
            yearsInOffice={candidate.yearsInOffice}
          />
        </div>

        {(candidate.website || candidate.email || candidate.phone) && (
          <div className="mt-2 font-mono text-xs space-y-1">
            {candidate.website && (
              <div>
                <a
                  href={candidate.website}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="underline hover:no-underline"
                >
                  WEBSITE →
                </a>
              </div>
            )}
            {candidate.email && (
              <div>
                <a href={`mailto:${candidate.email}`} className="underline hover:no-underline">
                  {candidate.email}
                </a>
              </div>
            )}
            {candidate.phone && <div>{candidate.phone}</div>}
          </div>
        )}
      </div>
    </div>
  );
}
