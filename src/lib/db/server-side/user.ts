
import {createSupabaseRouteClient} from "@/lib/db/server-side/supabase-client";

export const dynamic = 'force-dynamic'

export async function getUser() {
    const supabase = createSupabaseRouteClient()
    let {data: {session}, error} = await supabase.auth.getSession();
    if (session) {
        return session.user
    }
    return null
}

export async function getUserId() {
    const user = await getUser()
    if (user) {
        return user.id
    }
    return null
}