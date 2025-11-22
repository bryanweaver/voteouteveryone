const urls = [
    '/',
]

export default async function sitemap() {
    const xmlUrls = urls.map(url => {
        return {
            url: `https://voteout.org${url}`,
            lastModified: new Date(),
        }
    })

    return xmlUrls
}