import {NextResponse} from 'next/server'
import type {NextRequest} from 'next/server'

// Simplified middleware - app is fully public
// Supabase auth kept for future paid postcard feature only
export async function middleware(request: NextRequest) {
    // Just pass through - no auth checks
    return NextResponse.next({
        request: {
            headers: request.headers,
        },
    })
}

export const config = {
    matcher: [
        /*
         * Match all request paths except for the ones starting with:
         * - api (API routes)
         * - _next/static (static files)
         * - _next/image (image optimization files)
         * - favicon.ico (favicon file)
         * - images (image assets)
         * - sitemap (sitemap.xml)
         */
        '/((?!api|_next/static|_next/image|images|favicon.ico|sitemap).*)',
    ],
}
