import { AddressForm } from '@/components/forms/AddressForm';

export default function Home() {
  return (
    <main className="min-h-screen bg-white text-black">
      {/* Hero Section - Brutalist Design */}
      <section className="container mx-auto px-4 py-6 max-w-3xl">
        {/* Main Heading */}
        <h1 className="text-6xl md:text-7xl font-black mb-8 leading-tight uppercase tracking-tight border-b-8 border-black pb-4">
          VOTE EVERY INCUMBENT OUT
        </h1>

        {/* Subheading */}
        <p className="text-2xl md:text-3xl font-mono mb-12 leading-snug">
          Enter your address.<br />
          Print your voter guide.
        </p>

        {/* Address Form */}
        <div className="bg-white border-4 border-black p-8 mb-8">
          <AddressForm />
        </div>

        {/* Privacy Note - Single instance */}
        <p className="text-sm font-mono text-gray-600 border-l-4 border-black pl-4">
          Privacy: Your address is used only to find your ballot. We never sell your data.
        </p>
      </section>

      {/* Stats Section - Brutalist Grid */}
      <section className="bg-black text-white py-16 mt-16">
        <div className="container mx-auto px-4 max-w-3xl">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-0 border-4 border-white">
            <div className="border-b-4 md:border-b-0 md:border-r-4 border-white p-8 text-center">
              <div className="text-6xl font-black mb-2">95%</div>
              <p className="font-mono text-sm uppercase">Incumbents won 2024</p>
            </div>
            <div className="border-b-4 md:border-b-0 md:border-r-4 border-white p-8 text-center">
              <div className="text-6xl font-black mb-2">98%</div>
              <p className="font-mono text-sm uppercase">Congress incumbents won</p>
            </div>
            <div className="p-8 text-center">
              <div className="text-6xl font-black mb-2">20%</div>
              <p className="font-mono text-sm uppercase">Congress approval</p>
            </div>
          </div>
        </div>
      </section>

      {/* Nonpartisan Statement */}
      <section className="container mx-auto px-4 py-16 max-w-3xl">
        <div className="border-4 border-black p-8 bg-white">
          <h2 className="text-4xl font-black mb-6 uppercase">
            NONPARTISAN
          </h2>
          <p className="text-xl font-mono leading-relaxed">
            We identify incumbents from ALL political parties equally. We make no endorsements. We simply make your choices visible.
          </p>
        </div>
      </section>

      {/* Footer */}
      <footer className="border-t-4 border-black py-8">
        <div className="container mx-auto px-4 max-w-3xl">
          <p className="font-mono text-sm text-center">
            Open source. Privacy-focused. No ads. No tracking.
          </p>
        </div>
      </footer>
    </main>
  );
}
