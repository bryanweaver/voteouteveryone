'use client';

import type { Representative } from '@/types/ballot';

interface RepCardProps {
  rep: Representative;
}

export function RepresentativeCard({ rep }: RepCardProps) {
  return (
    <div className="bg-white border-4 border-black">
      <div className="bg-black text-white px-6 py-4">
        <div className="flex items-center justify-between gap-4">
          <div>
            <h3 className="text-lg font-black uppercase">
              {rep.office}
            </h3>
            {rep.district && (
              <p className="text-sm font-mono mt-1">District {rep.district}</p>
            )}
            {rep.jurisdiction && (
              <p className="text-sm font-mono mt-1">{rep.jurisdiction}</p>
            )}
          </div>
          {rep.party && (
            <span className="font-mono text-xs uppercase px-3 py-1 bg-white text-black">
              {rep.party}
            </span>
          )}
        </div>
      </div>

      <div className="px-6 py-4">
        <h4 className="font-black text-xl uppercase mb-3">
          {rep.name}
        </h4>

        {/* Contact Info */}
        <div className="font-mono text-sm space-y-2">
          {rep.website && (
            <div>
              <strong className="uppercase">Website:</strong>{' '}
              <a
                href={rep.website}
                target="_blank"
                rel="noopener noreferrer"
                className="underline hover:no-underline break-all"
              >
                {rep.website}
              </a>
            </div>
          )}
          {rep.phone && (
            <div>
              <strong className="uppercase">Phone:</strong> {rep.phone}
            </div>
          )}
          {rep.email && (
            <div>
              <strong className="uppercase">Email:</strong>{' '}
              <a href={`mailto:${rep.email}`} className="underline hover:no-underline">
                {rep.email}
              </a>
            </div>
          )}
        </div>

        {/* Social Media */}
        {(rep.twitter || rep.facebook || rep.youtube) && (
          <div className="mt-4 flex gap-3 flex-wrap">
            {rep.twitter && (
              <a
                href={`https://twitter.com/${rep.twitter}`}
                target="_blank"
                rel="noopener noreferrer"
                className="font-mono text-xs uppercase px-3 py-1 bg-white text-black border-2 border-black hover:bg-gray-100"
              >
                TWITTER
              </a>
            )}
            {rep.facebook && (
              <a
                href={`https://facebook.com/${rep.facebook}`}
                target="_blank"
                rel="noopener noreferrer"
                className="font-mono text-xs uppercase px-3 py-1 bg-white text-black border-2 border-black hover:bg-gray-100"
              >
                FACEBOOK
              </a>
            )}
            {rep.youtube && (
              <a
                href={`https://youtube.com/${rep.youtube}`}
                target="_blank"
                rel="noopener noreferrer"
                className="font-mono text-xs uppercase px-3 py-1 bg-white text-black border-2 border-black hover:bg-gray-100"
              >
                YOUTUBE
              </a>
            )}
          </div>
        )}
      </div>
    </div>
  );
}

interface RepSectionProps {
  title: string;
  reps: Representative[];
}

export function RepresentativeSection({ title, reps }: RepSectionProps) {
  return (
    <div>
      <h2 className="text-3xl font-black uppercase mb-4 border-b-4 border-black pb-2">
        {title}
      </h2>
      <div className="space-y-4">
        {reps.map((rep) => (
          <RepresentativeCard key={rep.id} rep={rep} />
        ))}
      </div>
    </div>
  );
}
