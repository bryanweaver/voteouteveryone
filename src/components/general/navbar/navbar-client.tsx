'use client'

import Link from "next/link";

export default function NavbarClient() {
    return (
        <div className="border-b-4 border-black bg-white">
            <div className="flex h-16 items-center px-4 max-w-6xl mx-auto">
                <Link href="/" className="flex items-center">
                    <span className="text-2xl font-black uppercase tracking-tight">VoteOut</span>
                </Link>
                
                <div className="ml-auto">
                    <Link 
                        href="/ballot" 
                        className="bg-black text-white px-6 py-3 font-mono text-sm uppercase hover:bg-gray-800 transition-colors border-2 border-black"
                    >
                        Get Ballot
                    </Link>
                </div>
            </div>
        </div>
    )
}
