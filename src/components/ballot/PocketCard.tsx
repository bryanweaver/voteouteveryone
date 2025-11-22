'use client';

import { Ballot } from '@/types/ballot';
import { useState, useEffect, useRef } from 'react';

interface PocketCardProps {
  ballot: Ballot;
  onPrintHandler?: (handler: () => void) => void;
}

export function PocketCard({ ballot, onPrintHandler }: PocketCardProps) {
  const cardRef = useRef<HTMLDivElement>(null);

  // Print handler - creates a clean print window
  const handlePrint = () => {
    if (!cardRef.current) return;

    const printWindow = window.open('', '', 'width=800,height=600');
    if (!printWindow) return;

    const cardHtml = cardRef.current.innerHTML;

    printWindow.document.write(`
      <!DOCTYPE html>
      <html>
        <head>
          <title>VoteOut Pocket Card</title>
          <style>
            @page {
              margin: 0.25in;
              size: landscape;
            }
            * {
              margin: 0;
              padding: 0;
              box-sizing: border-box;
            }
            body {
              font-family: system-ui, -apple-system, sans-serif;
            }
            .print-hidden {
              display: none !important;
            }
          </style>
          <link rel="stylesheet" href="/_next/static/css/app/layout.css" />
        </head>
        <body>
          ${cardHtml}
        </body>
      </html>
    `);

    printWindow.document.close();
    printWindow.focus();

    // Wait for styles to load then print
    setTimeout(() => {
      printWindow.print();
      printWindow.close();
    }, 250);
  };

  // Pass handlers to parent
  useEffect(() => {
    if (onPrintHandler) {
      onPrintHandler(handlePrint);
    }
  }, [onPrintHandler]);

  // Get all contests with incumbents
  const contestsWithIncumbents = ballot.contests
    .filter(contest => contest.candidates.some(c => c.isIncumbent))
    .map(contest => ({
      ...contest,
      // Only keep incumbent candidates
      incumbents: contest.candidates.filter(c => c.isIncumbent),
    }));

  if (contestsWithIncumbents.length === 0) {
    return (
      <div className="w-[6in] h-[4in] border-2 border-dashed border-gray-400 p-4 bg-white flex items-center justify-center">
        <p className="font-mono text-sm text-center">
          No incumbents on this ballot!<br/>
          All candidates are new to office.
        </p>
      </div>
    );
  }

  const CardContent = ({ isPrintVersion = false }: { isPrintVersion?: boolean }) => (
    <div
      id={isPrintVersion ? "printable-card" : undefined}
      className="w-[6in] h-[4in] border-2 border-dashed border-gray-600 bg-white p-3 print:border-black relative"
    >
      {/* Cut line indicators */}
      <div className="absolute top-0 left-0 right-0 h-0 border-t border-dashed border-gray-400 print:border-gray-600" />
      <div className="absolute bottom-0 left-0 right-0 h-0 border-b border-dashed border-gray-400 print:border-gray-600" />
      <div className="absolute top-0 bottom-0 left-0 w-0 border-l border-dashed border-gray-400 print:border-gray-600" />
      <div className="absolute top-0 bottom-0 right-0 w-0 border-r border-dashed border-gray-400 print:border-gray-600" />

      {/* Scissors indicators in corners - hidden when printing */}
      <div className="absolute -top-1 -left-1 text-gray-400 text-xs print-hidden">✂</div>
      <div className="absolute -top-1 -right-1 text-gray-400 text-xs print-hidden">✂</div>
      <div className="absolute -bottom-1 -left-1 text-gray-400 text-xs print-hidden">✂</div>
      <div className="absolute -bottom-1 -right-1 text-gray-400 text-xs print-hidden">✂</div>

      <div className="h-full flex flex-col">
        {/* Header */}
        <div className="bg-black text-white px-4 py-3 mb-3">
          <h2 className="font-black text-2xl uppercase leading-tight">DON'T VOTE FOR</h2>
          <p className="font-mono text-sm leading-tight">INCUMBENTS TO VOTE OUT</p>
        </div>

        {/* Address & Date */}
        <div className="px-4 mb-3">
          <p className="font-mono text-xs leading-tight text-gray-700">
            {ballot.address.city}, {ballot.address.state} • {new Date(ballot.electionDate).toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' })}
          </p>
        </div>

        {/* Incumbents list - Two columns */}
        <div className="flex-1 overflow-hidden px-4">
          <div className="grid grid-cols-2 gap-x-4 gap-y-2">
            {contestsWithIncumbents.slice(0, 10).map((contest, idx) => (
              <div key={idx} className="border-l-4 border-black pl-3">
                <div className="flex items-start justify-between gap-1">
                  <div className="flex-1 min-w-0">
                    <p className="font-mono text-sm font-bold uppercase leading-tight truncate">
                      {contest.office.replace('United States', 'U.S.').replace('Representative', 'Rep')}
                    </p>
                    <div className="space-y-0.5">
                      {contest.incumbents.map((inc, i) => (
                        <p key={i} className="font-mono text-base leading-tight truncate">
                          ✗ {inc.name} <span className="text-xs">({inc.party})</span>
                        </p>
                      ))}
                    </div>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>

        {/* Footer */}
        <div className="mt-3 pt-2 border-t-2 border-gray-300">
          <p className="font-mono text-xs text-center leading-tight text-gray-600">
            voteout.org • Vote all incumbents out
          </p>
        </div>
      </div>
    </div>
  );

  return (
    <div ref={cardRef}>
      <CardContent isPrintVersion={false} />
    </div>
  );
}
