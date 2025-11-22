'use client';

interface PrintButtonProps {
  onClick?: () => void;
}

export function PrintButton({ onClick }: PrintButtonProps) {
  return (
    <button
      onClick={onClick || (() => window.print())}
      className="bg-black text-white px-6 py-3 font-mono text-sm uppercase hover:bg-gray-800 transition-colors border-2 border-black"
    >
      PRINT
    </button>
  );
}
