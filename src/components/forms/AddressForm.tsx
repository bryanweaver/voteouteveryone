'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import type { Address } from '@/types/ballot';

export function AddressForm() {
  const router = useRouter();
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const testMode = process.env.NEXT_PUBLIC_TEST_MODE === 'true';

  const [address, setAddress] = useState<Address>({
    line1: '',
    city: '',
    state: '',
    zip: '',
  });

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError(null);
    setIsLoading(true);

    try {
      // Validate address
      if (!address.line1 || !address.city || !address.state || !address.zip) {
        setError('Please fill in all required fields');
        setIsLoading(false);
        return;
      }

      // Call API to get ballot
      const response = await fetch('/api/ballot', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          address,
          testMode, // Use Google's test election (2000) if enabled
        }),
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.error || 'Failed to fetch ballot');
      }

      // Navigate to results page (works for both elections and no-election cases)
      router.push(`/ballot/results/${data.id}`);
    } catch (err) {
      console.error('Error fetching ballot:', err);
      setError(
        err instanceof Error ? err.message : 'Failed to fetch ballot information'
      );
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-6 w-full">
      {testMode && (
        <div className="bg-yellow-100 border-4 border-yellow-600 p-4 mb-6">
          <p className="font-mono text-sm font-bold text-yellow-900 uppercase">
            ⚠️ TEST MODE ENABLED - Using Google Test Election (2000)
          </p>
          <p className="font-mono text-xs text-yellow-800 mt-1">
            Set NEXT_PUBLIC_TEST_MODE=false in .env.local to disable
          </p>
        </div>
      )}

      <div>
        <Label htmlFor="line1" className="font-mono text-sm uppercase mb-2 block">Street Address *</Label>
        <Input
          id="line1"
          type="text"
          placeholder="123 Main Street"
          value={address.line1}
          onChange={(e) => setAddress({ ...address, line1: e.target.value })}
          required
          disabled={isLoading}
          className="border-2 border-black rounded-none font-mono"
        />
      </div>

      <div>
        <Label htmlFor="line2" className="font-mono text-sm uppercase mb-2 block">Apartment, Suite, etc.</Label>
        <Input
          id="line2"
          type="text"
          placeholder="Apt 4B"
          value={address.line2 || ''}
          onChange={(e) => setAddress({ ...address, line2: e.target.value })}
          disabled={isLoading}
          className="border-2 border-black rounded-none font-mono"
        />
      </div>

      <div className="grid grid-cols-2 gap-4">
        <div>
          <Label htmlFor="city" className="font-mono text-sm uppercase mb-2 block">City *</Label>
          <Input
            id="city"
            type="text"
            placeholder="Anytown"
            value={address.city}
            onChange={(e) => setAddress({ ...address, city: e.target.value })}
            required
            disabled={isLoading}
            className="border-2 border-black rounded-none font-mono"
          />
        </div>

        <div>
          <Label htmlFor="state" className="font-mono text-sm uppercase mb-2 block">State *</Label>
          <Input
            id="state"
            type="text"
            placeholder="CA"
            maxLength={2}
            value={address.state}
            onChange={(e) =>
              setAddress({ ...address, state: e.target.value.toUpperCase() })
            }
            required
            disabled={isLoading}
            className="border-2 border-black rounded-none font-mono"
          />
        </div>
      </div>

      <div>
        <Label htmlFor="zip" className="font-mono text-sm uppercase mb-2 block">ZIP Code *</Label>
        <Input
          id="zip"
          type="text"
          placeholder="12345"
          maxLength={10}
          value={address.zip}
          onChange={(e) => setAddress({ ...address, zip: e.target.value })}
          required
          disabled={isLoading}
          className="border-2 border-black rounded-none font-mono"
        />
      </div>

      {error && (
        <div className="bg-white border-4 border-black p-4">
          <p className="font-mono text-sm">{error}</p>
        </div>
      )}

      <button
        type="submit"
        disabled={isLoading}
        className="w-full bg-black text-white px-6 py-4 font-mono text-sm uppercase hover:bg-gray-800 disabled:bg-gray-400 transition-colors border-2 border-black"
      >
        {isLoading ? 'FINDING BALLOT...' : 'GET MY BALLOT'}
      </button>
    </form>
  );
}
