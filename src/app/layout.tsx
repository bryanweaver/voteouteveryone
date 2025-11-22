import './globals.css'
import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import Navbar from "@/components/general/navbar/navbar";

const inter = Inter({ subsets: ['latin'] })

const projectTitle = 'VoteOut - Vote Every Incumbent Out'
const projectDescription = 'Nonpartisan voter guide showing non-incumbent candidates in every race. Free, privacy-focused, and easy to use.'
const projectUrl = 'https://voteout.org'

export const metadata: Metadata = {
    metadataBase: new URL(projectUrl),
    title: projectTitle,
    description: projectDescription,
    openGraph: {
        title: projectTitle,
        description: projectDescription,
        url: projectUrl,
        siteName: 'VoteOut',
        locale: 'en_US',
        type: 'website',
    },
    twitter: {
        card: 'summary_large_image',
        title: projectTitle,
        description: projectDescription,
    }
}

export const dynamic = 'force-dynamic'

export default async function RootLayout({
    children,
}: {
    children: React.ReactNode
}) {
    return (
        <html lang="en">
            <body className={inter.className + ' flex flex-col min-h-screen bg-white'}>
                {/* <Navbar /> */}
                <div className='flex flex-col flex-grow'>
                    {children}
                </div>
            </body>
        </html>
    )
}
