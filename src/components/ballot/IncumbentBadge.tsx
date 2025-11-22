import { cn } from '@/lib/utils';

interface IncumbentBadgeProps {
  isIncumbent: boolean;
  yearsInOffice?: number;
  className?: string;
}

export function IncumbentBadge({
  isIncumbent,
  yearsInOffice,
  className,
}: IncumbentBadgeProps) {
  if (isIncumbent) {
    return (
      <span
        className={cn(
          'inline-flex items-center gap-1 px-2 py-1 font-mono text-xs uppercase',
          'bg-black text-white border-2 border-black',
          className
        )}
      >
        <span>INCUMBENT</span>
        {yearsInOffice && <span>({yearsInOffice}yr)</span>}
      </span>
    );
  }

  return (
    <span
      className={cn(
        'inline-flex items-center gap-1 px-2 py-1 font-mono text-xs uppercase',
        'bg-white text-black border-2 border-black',
        className
      )}
    >
      <span>NEW</span>
    </span>
  );
}
