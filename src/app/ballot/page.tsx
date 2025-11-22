import { AddressForm } from '@/components/forms/AddressForm';
import Link from 'next/link';

export default function BallotPage() {
  return (
    <div className="min-h-screen bg-white">
      <div className="container mx-auto px-4 py-16 max-w-2xl">
        {/* Back link */}
        <Link
          href="/"
          className="font-mono text-sm mb-8 inline-block border-b-2 border-black hover:bg-black hover:text-white px-2 py-1 transition-colors"
        >
          ← HOME
        </Link>

        {/* Header */}
        <div className="mb-12">
          <h1 className="text-5xl md:text-6xl font-black mb-4 uppercase leading-tight border-b-4 border-black pb-4">
            GET YOUR BALLOT
          </h1>
          <p className="text-xl font-mono">
            Enter your address to see non-incumbent candidates
          </p>
        </div>

        {/* Form */}
        <div className="bg-white border-4 border-black p-8">
          <AddressForm />
        </div>
      </div>
    </div>
  );
}
