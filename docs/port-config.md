# VoteOut - Port Configuration

## Port Assignments

To avoid conflicts with other Supabase projects on your machine, VoteOut uses the following ports:

| Service | Port | URL |
|---------|------|-----|
| **API** | 54341 | http://127.0.0.1:54341 |
| **Database** | 54342 | postgresql://postgres:postgres@localhost:54342/postgres |
| **Studio** | 54343 | http://localhost:54343 |
| **Inbucket (Email)** | 54344 | http://localhost:54344 |
| **SMTP** | 54345 | smtp://localhost:54345 |
| **POP3** | 54346 | pop3://localhost:54346 |
| **Analytics** | 54347 | http://localhost:54347 |
| **Vector** | 54348 | http://localhost:54348 |

## Other Projects on This Machine

| Project | Port Range |
|---------|------------|
| **dealdocs-supabase** | 54321-54328 |
| **Inspector-App** | 54331-54338 |
| **voteout** | 54341-54348 ⬅️ THIS PROJECT |

## Quick Access Links

- **Supabase Studio:** http://localhost:54343
- **Email Testing (Inbucket):** http://localhost:54344
- **Next.js Dev Server:** http://localhost:3000 (default)

## Configuration File

These ports are defined in: `supabase/config.toml`

To change ports, edit that file and restart Supabase:
```bash
supabase stop
supabase start
```

## Environment Variables

The API URL is automatically used in `.env.local`:

```bash
NEXT_PUBLIC_SUPABASE_URL=http://127.0.0.1:54341
```

## Troubleshooting

**Port already in use?**

Check what's running on a port (Windows PowerShell):
```powershell
netstat -ano | findstr :54341
```

**Can't access Studio?**

Make sure Supabase is running:
```bash
supabase status
```

If not running:
```bash
supabase start
```

**Wrong API URL?**

Verify `.env.local` has the correct port (54341, not 54321):
```bash
NEXT_PUBLIC_SUPABASE_URL=http://127.0.0.1:54341
```
