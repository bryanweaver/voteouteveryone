import NavbarClient from "@/components/general/navbar/navbar-client";

export const revalidate = 0
export const dynamic = 'force-dynamic'

export default async function Navbar() {
    return (
        <NavbarClient />
    )
}
