# Plan: Remove All SupaLaunch Code & References

**Status:** 🔴 Not Started
**Created:** 2025-11-21
**Goal:** Remove all SupaLaunch boilerplate code to prepare for open-sourcing the VoteOut application

---

## Executive Summary

VoteOut is currently built on the SupaLaunch Next.js boilerplate, which has licensing restrictions against public repositories. This plan outlines removing all SupaLaunch-specific code while preserving our custom VoteOut functionality (ballot lookup, representatives, pocket cards).

**Estimated Time:** 3-4 hours
**Risk Level:** Low (VoteOut core features are independent)

---

## Current State Analysis

### SupaLaunch Code Found (40 occurrences across 12 files)

**Files with SupaLaunch references:**
- BRUTALIST_TRANSFORMATION.md (2 occurrences)
- CODE_CLEANUP_NEEDED.md (6 occurrences)
- DATABASE_SCHEMA_CHANGES.md (8 occurrences)
- DESIGN_COMPARISON.md (2 occurrences)
- posts/2024/supalaunch-blog-post.mdx (8 occurrences)
- src/components/landing-sections/feature.tsx (1 occurrence)
- src/app/sitemap.ts (3 occurrences)
- src/components/landing-sections/hero.tsx (1 occurrence)
- src/lib/emails/email-templates.ts (5 occurrences)
- supabase/migrations/20250113143000_cleanup_supalaunch_boilerplate.sql (2 occurrences)
- src/lib/emails/send-email.ts (1 occurrence)
- src/lib/payments/stripe.ts (1 occurrence)

---

## Removal Strategy

### Phase 1: Delete SupaLaunch Boilerplate Features (Safe)

These directories contain SupaLaunch boilerplate that VoteOut doesn't use:

#### 1.1 Authentication System
```bash
# Delete files
rm -rf src/app/auth/
```
**Why safe:** VoteOut doesn't require user accounts - it's a public lookup tool

#### 1.2 Payment/Stripe Integration
```bash
# Delete files
rm -rf src/lib/payments/
```
**Why safe:** VoteOut is free, no monetization

#### 1.3 Email System
```bash
# Delete files
rm -rf src/lib/emails/
```
**Why safe:** No email functionality in VoteOut

#### 1.4 Blog System
```bash
# Delete files
rm -rf src/components/blog/
rm -rf posts/
```
**Why safe:** VoteOut doesn't have a blog

#### 1.5 Landing Page Marketing Sections
```bash
# Delete files
rm -rf src/components/landing-sections/
```
**Why safe:** VoteOut landing page is just the address form

#### 1.6 Dashboard Components
```bash
# Delete files
rm -rf src/components/dashboard/
```
**Why safe:** No user dashboard in VoteOut

#### 1.7 Theme System (Dark/Light Mode)
```bash
# Delete files
rm -rf src/components/themes/
```
**Why safe:** VoteOut uses fixed brutalist design (no theme toggle)

---

### Phase 2: Remove SupaLaunch Dependencies

#### 2.1 Package.json Cleanup

**Dependencies to REMOVE:**
```json
{
  "@ai-sdk/openai": "^1.3.22",           // AI features not used
  "@mdx-js/loader": "^3.0.0",            // Blog system
  "@mdx-js/react": "^3.0.0",             // Blog system
  "@next/mdx": "^14.0.4",                // Blog system
  "@stripe/stripe-js": "^2.2.2",         // Payments
  "@types/mdx": "^2.0.10",               // Blog system
  "@vercel/analytics": "^1.1.1",         // Analytics (optional)
  "ai": "^4.3.15",                       // AI features
  "daisyui": "^4.6.1",                   // UI framework (not used)
  "gray-matter": "^4.0.3",               // Blog system
  "langchain": "^0.0.204",               // AI features
  "mailersend": "^2.2.0",                // Email system
  "next-mdx-remote": "^4.4.1",           // Blog system
  "next-themes": "^0.4.6",               // Theme system
  "openai": "^4.98.0",                   // AI features
  "rehype-autolink-headings": "^7.1.0",  // Blog system
  "rehype-slug": "^6.0.0",               // Blog system
  "remark-toc": "^9.0.0",                // Blog system
  "stripe": "^14.8.0"                    // Payments
}
```

**Dependencies to KEEP (VoteOut uses these):**
```json
{
  "@hookform/resolvers": "^5.0.1",       // Form validation
  "@radix-ui/*": "...",                  // UI primitives (MIT licensed)
  "@supabase/ssr": "^0.3.0",             // Database (required)
  "@tailwindcss/typography": "^0.5.10",  // Typography
  "class-variance-authority": "^0.7.1",  // Utility
  "clsx": "^2.1.1",                      // Utility
  "lucide-react": "^0.294.0",            // Icons
  "next": "^14.0.4",                     // Framework
  "react": "^18.2.0",                    // Framework
  "react-dom": "^18.2.0",                // Framework
  "react-hook-form": "^7.56.3",          // Forms
  "tailwind-merge": "^3.2.0",            // Utility
  "tailwindcss": "3.3.3",                // Styling
  "tailwindcss-animate": "^1.0.7",       // Animations
  "typescript": "5.2.2",                 // Language
  "zod": "^3.24.4",                      // Validation
  "@playwright/test": "^1.56.1",         // Testing
  "playwright": "^1.56.1"                // Testing
}
```

#### 2.2 Update Package Scripts
```json
{
  "scripts": {
    "dev": "next dev -p 3001",
    "build": "next build",
    "start": "next start",
    "lint": "next lint",
    "seed:congress": "node scripts/seed-congress.js",
    "test": "playwright test",
    "test:ui": "playwright test --ui"
  }
}
```

---

### Phase 3: Clean Up Documentation

#### 3.1 Delete SupaLaunch Documentation Files
```bash
# Delete old docs
rm BRUTALIST_TRANSFORMATION.md
rm CODE_CLEANUP_NEEDED.md
rm DATABASE_SCHEMA_CHANGES.md
rm DESIGN_COMPARISON.md
rm BUILD_COMPLETE.md
rm CARD_DESIGN.md
rm DOMAIN_NAME_OPTIONS.md
rm GRANT_APPLICATIONS.md
rm IMPLEMENTATION_PLAN.md
rm LANDING_PAGE_COPY.md
rm NEXT_STEPS.md
rm PORT_CONFIG.md
rm PROJECT_STRUCTURE.md
rm SECURITY_FIXES_APPLIED.md
```

**Keep these docs:**
- README.md (will be rewritten)
- TESTING_ELECTIONS.md (VoteOut specific)

#### 3.2 Create New Documentation
- [ ] **README.md** - Fresh README for VoteOut
- [ ] **CONTRIBUTING.md** - Contribution guidelines
- [ ] **LICENSE** - MIT or Apache 2.0 license
- [ ] **SETUP.md** - Local development setup
- [ ] **API.md** - API documentation

---

### Phase 4: Update Core Files

#### 4.1 src/app/page.tsx
- Keep: Address form
- Remove: Any landing page marketing content
- Simplify: Just the form, no extras

#### 4.2 src/app/layout.tsx
- Remove: Theme provider
- Remove: Analytics
- Keep: Basic Next.js layout

#### 4.3 src/components/general/navbar/navbar.tsx
- Simplify: Just logo and basic nav
- Remove: Auth buttons
- Remove: Theme toggle

#### 4.4 src/components/general/footer.tsx
- Simplify: Basic footer with project info
- Remove: Marketing links
- Add: Open source attribution

#### 4.5 src/app/sitemap.ts
- Remove: SupaLaunch references
- Update: VoteOut URLs only

---

### Phase 5: Database Cleanup

#### 5.1 Remove Unused Migrations
```bash
# Delete SupaLaunch-specific migrations
rm supabase/migrations/20231211192855_cards.sql
rm supabase/migrations/20231211193959_storage.sql
rm supabase/migrations/20231220171840_stripe.sql
rm supabase/migrations/20250113143000_cleanup_supalaunch_boilerplate.sql
```

**Keep these migrations:**
- 20250113000000_voteout_schema.sql (core schema)
- 20250114000000_create_representatives.sql (representatives)

#### 5.2 Update supabase/seed.sql
- Remove: Any SupaLaunch boilerplate data
- Keep: VoteOut seed data only

---

### Phase 6: UI Components Audit

#### 6.1 Keep These (VoteOut Custom or MIT Licensed)
- ✅ src/components/ballot/* (all custom)
- ✅ src/components/representatives/* (all custom)
- ✅ src/components/forms/* (custom)
- ✅ src/components/ui/* (shadcn/ui - MIT licensed separately)

#### 6.2 Remove/Rewrite These
- ❌ src/components/landing-sections/* (delete)
- ❌ src/components/blog/* (delete)
- ❌ src/components/dashboard/* (delete)
- ❌ src/components/themes/* (delete)

---

### Phase 7: Configuration Files

#### 7.1 next.config.js
- Remove: MDX configuration
- Remove: Any SupaLaunch-specific settings
- Keep: Basic Next.js config

#### 7.2 tailwind.config.ts
- Remove: DaisyUI
- Keep: Custom VoteOut colors/fonts
- Simplify: Minimal config

#### 7.3 components.json (shadcn/ui config)
- Keep as-is (needed for UI components)

---

## VoteOut Core Features (Protected - Do Not Touch)

### ✅ Keep All of These:

**API Routes:**
- `src/app/api/ballot/route.ts`
- `src/app/api/representatives/route.ts`

**Services:**
- `src/lib/services/ballot-service.ts`
- `src/lib/services/representatives-service.ts`
- `src/lib/services/openstates-service.ts`
- `src/lib/services/geocoding-service.ts`
- `src/lib/api/google-civic.ts`

**Components:**
- `src/components/ballot/*` (all)
- `src/components/representatives/*` (all)
- `src/components/forms/AddressForm.tsx`

**Database:**
- `supabase/seed/congress_data.sql`
- `supabase/seed/federal_representatives.sql`
- `supabase/seed/president_vp.sql`
- `scripts/seed-congress.js`

**Tests:**
- `tests/*` (all)
- `playwright.config.ts`
- `TESTING_ELECTIONS.md`

**Pages:**
- `src/app/ballot/results/[id]/page.tsx`

---

## Execution Checklist

### Pre-execution Backups
- [ ] Create feature branch: `git checkout -b remove-supalaunch-code`
- [ ] Verify current main branch is working
- [ ] Document current package.json dependencies

### Phase 1: Delete Boilerplate
- [ ] Delete auth directory
- [ ] Delete payments directory
- [ ] Delete emails directory
- [ ] Delete blog components
- [ ] Delete landing sections
- [ ] Delete dashboard components
- [ ] Delete themes components
- [ ] Delete posts directory

### Phase 2: Clean Dependencies
- [ ] Remove unused dependencies from package.json
- [ ] Run `npm install` to clean up package-lock.json
- [ ] Verify no broken imports: `npm run build`

### Phase 3: Update Documentation
- [ ] Delete old .md files
- [ ] Create new README.md
- [ ] Create LICENSE file
- [ ] Create CONTRIBUTING.md

### Phase 4: Update Core Files
- [ ] Update src/app/page.tsx
- [ ] Update src/app/layout.tsx
- [ ] Update navbar.tsx
- [ ] Update footer.tsx
- [ ] Update sitemap.ts

### Phase 5: Database Cleanup
- [ ] Remove unused migrations
- [ ] Clean up seed.sql
- [ ] Test database migrations

### Phase 6: Configuration
- [ ] Update next.config.js
- [ ] Update tailwind.config.ts
- [ ] Remove DaisyUI references

### Phase 7: Testing & Verification
- [ ] Run dev server: `npm run dev`
- [ ] Test ballot lookup
- [ ] Test representatives lookup
- [ ] Test pocket card printing
- [ ] Run Playwright tests: `npx playwright test`
- [ ] Test production build: `npm run build`

### Phase 8: Final Cleanup
- [ ] Search for remaining "supalaunch" references: `grep -ri "supalaunch" .`
- [ ] Remove any remaining references
- [ ] Update all documentation

---

## Success Criteria

✅ **Complete when:**
1. Zero "supalaunch" references in codebase (grep returns nothing)
2. Application builds successfully: `npm run build`
3. All VoteOut features work:
   - Ballot lookup
   - Representatives lookup
   - Pocket card printing
4. Playwright tests pass
5. No unused dependencies in package.json
6. New README, LICENSE, and CONTRIBUTING files created
7. Repository ready to be made public

---

## Rollback Plan

If something breaks:
```bash
# Revert to previous state
git checkout main
git branch -D remove-supalaunch-code
```

All VoteOut core functionality is independent, so rollback should be straightforward.

---

## Post-Removal Steps

After successful removal:
1. Commit changes: `git commit -m "refactor: Remove all SupaLaunch boilerplate code"`
2. Create PR to main
3. Test in production
4. Add LICENSE file (MIT recommended)
5. Update README with open-source info
6. Make repository public
7. Move this file to `/completed-plans`

---

## Notes

- **Risk Assessment:** Low - VoteOut core features are completely independent
- **Dependencies:** Most kept dependencies are MIT licensed (Radix UI, shadcn/ui)
- **Timeline:** Can be completed in one session
- **Testing:** Comprehensive Playwright tests will catch any issues
