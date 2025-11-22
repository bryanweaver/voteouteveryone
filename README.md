# VoteOut - Vote Every Incumbent Out

A free, nonpartisan platform that helps voters identify non-incumbent candidates on their ballot.

## Project Overview

VoteOut provides personalized ballot guides that clearly show which candidates are incumbents and which are challengers. Users can:

1. Enter their address
2. See all races on their ballot with incumbent status highlighted
3. Print a wallet-sized card or request a free mailed postcard to take to the polls

**Mission:** Reduce information asymmetry in elections and strengthen democratic accountability.

---

## Local Development Setup

### Prerequisites

- Node.js 20+ and npm
- Supabase CLI (`npm install -g supabase`)
- Git

### Port Configuration

This project uses the following ports to avoid conflicts with other Supabase projects:

| Service                  | Port  |
| ------------------------ | ----- |
| API                      | 54341 |
| Database                 | 54342 |
| Studio                   | 54343 |
| Inbucket (Email Testing) | 54344 |
| SMTP                     | 54345 |
| POP3                     | 54346 |
| Analytics                | 54347 |
| Vector                   | 54348 |

**Supabase Studio URL:** http://localhost:54343
**API URL:** http://127.0.0.1:54341

### Installation Steps

1. **Clone and install dependencies:**

   ```bash
   cd C:\projects\voteout
   npm install
   ```

2. **Start Supabase local development:**

   ```bash
   supabase start
   ```

   This will:
   - Start PostgreSQL on port 54342
   - Start Supabase Studio on port 54343
   - Run migrations (creates ballot_cache, mailing_queue, usage_stats tables)
   - Generate API keys (displayed in terminal)

3. **Copy the API keys to .env.local:**

   After `supabase start`, copy the displayed keys into `.env.local`:
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY`
   - `SUPABASE_SERVICE_ROLE_KEY`

4. **Get API Keys for Election Data:**

   **Google Civic Information API (Required):**
   - Go to https://console.cloud.google.com/
   - Create a new project
   - Enable "Google Civic Information API"
   - Create credentials (API key)
   - Add to `.env.local` as `GOOGLE_CIVIC_API_KEY`

   **Ballotpedia API (Recommended):**
   - Contact Ballotpedia for nonprofit API access
   - Add to `.env.local` as `BALLOTPEDIA_API_KEY`

   **OpenFEC API (Optional, for federal races):**
   - Get key from https://api.open.fec.gov/developers/
   - Add to `.env.local` as `OPENFEC_API_KEY`

5. **Run the development server:**

   ```bash
   npm run dev
   ```

   Open http://localhost:3000

---

## Project Structure

```
voteout/
├── src/
│   ├── app/                   # Next.js 14 App Router
│   │   ├── (marketing)/       # Landing pages
│   │   ├── ballot/            # Ballot lookup flow
│   │   ├── api/               # API routes
│   │   └── ...
│   ├── components/            # React components
│   │   ├── ui/                # shadcn/ui components
│   │   ├── ballot/            # Ballot-specific components
│   │   └── forms/             # Form components
│   └── lib/                   # Utilities and services
│       ├── api/               # API clients (Google Civic, Ballotpedia, etc.)
│       ├── database/          # Supabase client
│       └── services/          # Business logic
├── supabase/
│   ├── config.toml            # Supabase local config (PORTS: 54341-54348)
│   └── migrations/            # Database migrations
├── public/                    # Static assets
├── .env.local                 # Environment variables (DO NOT COMMIT)
├── .claude/                   # Claude Code AI development system
│   ├── agents/                # Specialized AI agents for development
│   ├── commands/              # Custom slash commands
│   └── hooks/                 # Development workflow automation
└── package.json
```

---

## AI-Assisted Development (Claude Code)

VoteOut uses **Claude Code** - an AI-powered development system that provides intelligent coding assistance, automated workflows, and specialized agents for different development tasks.

### Quick Start with Claude Code

**Prerequisites:**

- Install Claude Code CLI: https://github.com/anthropics/claude-code

**Using Custom Commands:**

```bash
# Get comprehensive repository status
/repo-status

# Run full test suite and fix all issues
/test

# Build and deploy a feature end-to-end
/ship "add email verification to mailing requests"

# Add tests for a specific module
/add-tests "ballot-service"

# Fix specific issues or bugs
/fix "handle race condition in queue processing"

# Clean up code and improve quality
/cleanup
```

### Available Agents

The project includes specialized AI agents that can be invoked for specific tasks:

- **full-stack-developer**: Frontend and backend development, API integration
- **database-admin**: Database schema, migrations, queries, performance tuning
- **reviewer**: Code review, security analysis, performance optimization
- **shipper**: Git workflows, deployment, CI/CD automation
- **meta-agent**: Coordinate complex multi-agent workflows

### Custom Slash Commands

| Command                | Description                                       | Example                      |
| ---------------------- | ------------------------------------------------- | ---------------------------- |
| `/ship [feature]`      | Build and deploy feature from start to production | `/ship email notifications`  |
| `/test [focus]`        | Run tests, identify issues, fix systematically    | `/test openfec integration`  |
| `/add-tests [module]`  | Generate comprehensive test suite                 | `/add-tests mailing-service` |
| `/fix [issue]`         | Debug and fix specific problems                   | `/fix address validation`    |
| `/cleanup`             | Code quality improvements and refactoring         | `/cleanup`                   |
| `/repo-status [focus]` | Repository health and status report               | `/repo-status git`           |

### How It Works

1. **Invoke a command**: Type `/ship` or call an agent directly
2. **AI orchestration**: Claude Code coordinates multiple specialized agents
3. **Automated workflow**: Agents handle branching, implementation, testing, review
4. **Human oversight**: You review and approve key decisions

### Example Workflow

```bash
# Ship a new feature
/ship "integrate OpenFEC API for incumbent detection"

# This will:
# 1. Create feature branch (shipper agent)
# 2. Implement the feature (full-stack-developer agent)
# 3. Run tests (shipper agent)
# 4. Code review (reviewer agent)
# 5. Create PR with test results (shipper agent)
```

### Development System

This AI development system is part of an ongoing open-source project:

**Agent Orchestration System**: https://github.com/bryanweaver/agent-orchestration-system

The system provides:

- Multi-agent coordination for complex tasks
- Automated testing and quality checks
- Git workflow automation
- Development best practices enforcement
- Session logging and audit trails

### Configuration

Claude Code settings are stored in `.claude/settings.local.json` (git-ignored).

Key directories:

- `.claude/agents/` - Agent definitions and capabilities
- `.claude/commands/` - Custom slash command implementations
- `.claude/hooks/` - Workflow automation and event handlers
- `.claude/logs/` - Session logs and audit trails (git-ignored)

---

## Database Schema

The project uses three main tables:

### `ballot_cache`

Caches ballot data from external APIs to reduce costs and improve performance.

- Expires automatically after election day
- Indexed by address and election ID

### `mailing_queue`

Manages physical mailing requests via Lob API.

- Tracks status: pending → processing → sent/failed
- Links to cached ballot data

### `usage_stats`

Privacy-focused analytics (no PII).

- Tracks event types: ballot_lookup, pdf_download, mailing_request
- Stores only state/county/ZIP for geographic analysis

View the full schema: `supabase/migrations/20250113000000_voteout_schema.sql`

---

## Environment Variables

Copy `.env.local` and fill in your API keys:

```bash
# Supabase (auto-generated by `supabase start`)
NEXT_PUBLIC_SUPABASE_URL=http://127.0.0.1:54341
NEXT_PUBLIC_SUPABASE_ANON_KEY=<from supabase start>
SUPABASE_SERVICE_ROLE_KEY=<from supabase start>

# Election Data APIs
GOOGLE_CIVIC_API_KEY=<your key>
BALLOTPEDIA_API_KEY=<your key>
OPENFEC_API_KEY=<your key>

# Mailing Service (Lob) - Optional for development
LOB_API_KEY=<your key>
LOB_WEBHOOK_SECRET=<your secret>

# App Config
NEXT_PUBLIC_APP_URL=http://localhost:3000
MAILING_ENABLED=false
MAILING_DAILY_LIMIT=100
```

---

## Useful Commands

### Supabase Commands

```bash
# Start local Supabase (runs on ports 54341-54348)
supabase start

# Stop local Supabase
supabase stop

# Reset database (careful: deletes all data!)
supabase db reset

# View database in Supabase Studio
# Open: http://localhost:54343

# Generate TypeScript types from database schema
supabase gen types typescript --local > src/lib/database/database-types.ts

# Create a new migration
supabase migration new <migration_name>

# Check migration status
supabase migration list
```

### Next.js Commands

```bash
# Development server
npm run dev

# Production build
npm run build

# Start production server
npm start

# Linting
npm run lint
```

---

## Development Workflow

### Adding a New Feature

1. **Create database migrations** (if needed):

   ```bash
   supabase migration new add_feature_table
   ```

2. **Write migration SQL** in `supabase/migrations/<timestamp>_add_feature_table.sql`

3. **Apply migration:**

   ```bash
   supabase db reset  # or just restart supabase
   ```

4. **Generate types:**

   ```bash
   supabase gen types typescript --local > src/lib/database/database-types.ts
   ```

5. **Build the feature** in `src/`

6. **Test locally** at http://localhost:3000

### Testing Ballot Lookup

1. Get a valid US address (your address or use: "1600 Pennsylvania Avenue NW, Washington, DC 20500")
2. Ensure `GOOGLE_CIVIC_API_KEY` is set in `.env.local`
3. Navigate to `/ballot` route
4. Enter address and test ballot retrieval

---

## Deployment

### Supabase (Production)

1. Create a Supabase project at https://supabase.com
2. Link your local project:
   ```bash
   supabase link --project-ref <your-project-ref>
   ```
3. Push migrations:
   ```bash
   supabase db push
   ```
4. Get production keys from Supabase dashboard
5. Add to Vercel environment variables

### Vercel (Frontend)

1. Push code to GitHub
2. Import project to Vercel
3. Add environment variables in Vercel dashboard
4. Deploy

**Environment Variables for Production:**

- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`
- `SUPABASE_SERVICE_ROLE_KEY`
- `GOOGLE_CIVIC_API_KEY`
- `BALLOTPEDIA_API_KEY`
- `OPENFEC_API_KEY`
- `LOB_API_KEY` (when ready to enable mailing)
- `MAILING_ENABLED=true` (when ready)

---

## Contributing

This is an open-source project (MIT License). Contributions welcome!

See planning documentation in the `plans/` directory:

- `plans/openfec-integration.md` - OpenFEC API integration for incumbent detection
- `plans/lob-integration.md` - Physical mailing service implementation
- `plans/card-design.md` - Printable ballot card specifications
- `plans/grant-applications.md` - Foundation grant applications and funding

---

## Support & Funding

VoteOut is funded by grants from civic engagement foundations and individual donations.

- **Donate:** [Ko-fi/Open Collective links TBD]
- **Grants:** See `plans/grant-applications.md` for foundation applications

---

## Tech Stack

- **Frontend:** Next.js 14 (App Router), React, TypeScript
- **Styling:** Tailwind CSS, shadcn/ui components
- **Backend:** Next.js API Routes (serverless)
- **Database:** PostgreSQL (Supabase)
- **Auth:** Supabase Auth (not required for core functionality)
- **APIs:** Google Civic Information API, Ballotpedia API, OpenFEC API
- **Mailing:** Lob API
- **PDF:** @react-pdf/renderer
- **Deployment:** Vercel (frontend), Supabase (backend)

---

## Project Status

**Current Phase:** Initial setup and MVP development

**Next Steps:**

1. Build address input form
2. Integrate Google Civic API
3. Create ballot display components
4. Implement PDF generation
5. Add mailing integration (Lob API)
6. Launch beta testing

---

## License

MIT License - see LICENSE file

---

## Contact

For questions or support:

- GitHub Issues: [Create an issue]
- Email: [TBD]

---

**Remember:** This is a nonpartisan civic tool. We identify incumbents from all parties equally and make no endorsements. Our goal is informed voters and stronger democracy.
