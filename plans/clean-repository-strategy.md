# Clean Repository Strategy (No SupaLaunch in History)

**Status:** 🔴 Not Started
**Purpose:** Create a completely clean git repository with zero SupaLaunch code in history
**When:** Execute this BEFORE making the repository public

---

## The Problem

Even after removing all SupaLaunch code from current files, it remains in git history:
- All deleted SupaLaunch files are in commit history
- Anyone can access old commits to see SupaLaunch code
- Violates SupaLaunch's "no public sharing" license terms
- Legal liability remains

---

## ✅ Solution: Fresh Repository (Recommended)

Create a completely new git repository with only clean VoteOut code.

### Strategy Overview

1. **Remove SupaLaunch code** (following remove-supalaunch-code.md plan)
2. **Test thoroughly** to ensure everything works
3. **Create new repository** with only the clean code
4. **Archive old repository** (keep private for your records)

---

## Step-by-Step Execution Plan

### Phase 1: Clean the Code (Execute First)

Follow the `remove-supalaunch-code.md` plan to:
- Delete all SupaLaunch directories
- Remove unused dependencies
- Update documentation
- Test all VoteOut features

**Result:** Working VoteOut application with no SupaLaunch code in current files

---

### Phase 2: Create Fresh Repository

#### Step 1: Backup Current Repository
```bash
# Rename current repo directory
cd C:\projects\
mv voteout voteout-original
```

#### Step 2: Create New Clean Repository
```bash
# Create fresh directory
mkdir voteout
cd voteout

# Initialize new git repo (ZERO history)
git init

# Set up remote (we'll create new GitHub repo)
# Don't add remote yet - we'll do this later
```

#### Step 3: Copy Only Clean Code

**Copy these files/directories:**
```bash
# Core application
cp -r ../voteout-original/src ./src
cp -r ../voteout-original/public ./public

# Supabase (after cleaning migrations)
cp -r ../voteout-original/supabase ./supabase

# Configuration
cp ../voteout-original/package.json ./
cp ../voteout-original/package-lock.json ./
cp ../voteout-original/tsconfig.json ./
cp ../voteout-original/next.config.js ./
cp ../voteout-original/tailwind.config.ts ./
cp ../voteout-original/postcss.config.js ./
cp ../voteout-original/components.json ./
cp ../voteout-original/.gitignore ./
cp ../voteout-original/.env.example ./

# Testing
cp -r ../voteout-original/tests ./tests
cp ../voteout-original/playwright.config.ts ./

# Scripts
cp -r ../voteout-original/scripts ./scripts

# Documentation
cp ../voteout-original/README.md ./
cp ../voteout-original/TESTING_ELECTIONS.md ./

# Planning docs (optional - these don't have SupaLaunch code)
cp -r ../voteout-original/plans ./plans
cp -r ../voteout-original/docs ./docs
```

**DO NOT copy:**
- `.git/` directory (contains all history)
- `node_modules/` (will reinstall)
- `.next/` (build artifacts)
- Any remaining SupaLaunch code

#### Step 4: Clean Supabase Migrations

```bash
# Keep only VoteOut migrations
cd supabase/migrations
rm 20231211192855_cards.sql
rm 20231211193959_storage.sql
rm 20231220171840_stripe.sql
rm 20250113143000_cleanup_supalaunch_boilerplate.sql

# Keep these:
# - 20250113000000_voteout_schema.sql
# - 20250114000000_create_representatives.sql
```

#### Step 5: Verify Clean State

```bash
# Search for SupaLaunch references
grep -ri "supalaunch" . 2>/dev/null || echo "✅ No SupaLaunch references found"

# Check for SupaLaunch directories
find . -name "*auth*" -type d | grep -v node_modules | grep -v .git
find . -name "*payment*" -type d | grep -v node_modules | grep -v .git
find . -name "*email*" -type d | grep -v node_modules | grep -v .git

# Should return nothing suspicious
```

#### Step 6: Initial Commit (Fresh History)

```bash
# Install dependencies
npm install

# Test build
npm run build

# If successful, create initial commit
git add .
git commit -m "Initial commit: VoteOut - Vote Every Incumbent Out

A free, nonpartisan platform for voter information.

Features:
- Address-based ballot lookup
- Representatives lookup (federal & state)
- Printable pocket cards
- Comprehensive E2E testing
- Brutalist public service design

Built with Next.js 14, Supabase, and TypeScript.

License: MIT (or Apache 2.0)"
```

---

### Phase 3: Create New GitHub Repository

```bash
# Create new public repository (or keep private initially)
gh repo create voteout --public --source=. --remote=origin

# Or if you want to test privately first:
gh repo create voteout --private --source=. --remote=origin

# Push initial commit
git push -u origin main
```

---

### Phase 4: Verify Clean History

```bash
# Check commit count (should be 1)
git rev-list --count HEAD
# Output: 1

# Check for any SupaLaunch references in history
git log --all --full-history -S "supalaunch" -i
# Output: (nothing - clean!)

# Verify no old commits
git log --oneline
# Output: Just your initial commit
```

---

### Phase 5: Add LICENSE and Go Public

```bash
# Add MIT License
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2025 VoteOut

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

git add LICENSE
git commit -m "docs: Add MIT License"
git push

# Make repository public (if it was private)
gh repo edit --visibility public
```

---

## Archive Old Repository

```bash
# Keep the old repo for your records, but private
cd ../voteout-original

# Make sure it stays private
gh repo edit bryanweaver/voteout --visibility private --accept-visibility-change-consequences

# Or delete the old GitHub repo entirely if you prefer
# gh repo delete bryanweaver/voteout --confirm
```

---

## Alternative: History Rewriting (NOT Recommended)

**DO NOT USE THIS APPROACH** - It's complex, error-prone, and risky:

```bash
# This is NOT recommended - showing for completeness only
git filter-branch --tree-filter 'rm -rf src/lib/payments src/lib/emails' HEAD
# OR
bfg --delete-folders "{payments,emails,auth}" --delete-files "*.stripe.*"
```

**Why not recommended:**
- Very risky - can corrupt repository
- Complex to execute correctly
- Easy to miss files
- Forces all collaborators to re-clone
- History rewrite is detectable
- Doesn't give you a clean slate

---

## Timeline

**When to Execute:**

1. **Now:** Complete the code removal (remove-supalaunch-code.md)
2. **Test:** Thoroughly test VoteOut with all SupaLaunch code removed
3. **When ready to go public:** Execute this fresh repository strategy
4. **Final step:** Make new repository public

**Estimated Time:** 1-2 hours for fresh repository creation

---

## Benefits of Fresh Start

✅ **Zero SupaLaunch code in history**
- No licensing liability
- Clean git history
- Professional commit history

✅ **Clean slate**
- Start version at 1.0.0
- Clear initial commit
- No baggage

✅ **Legal safety**
- Fully compliant with SupaLaunch license
- No risk of accidental exposure
- Clear provenance

---

## Success Criteria

When done, verify:
- [ ] `git rev-list --count HEAD` returns 1 (single commit)
- [ ] `grep -ri "supalaunch" .` returns nothing
- [ ] All VoteOut features work (ballot, representatives, tests)
- [ ] `npm run build` succeeds
- [ ] Playwright tests pass
- [ ] No SupaLaunch directories exist
- [ ] LICENSE file added
- [ ] Repository is public (if desired)
- [ ] Old repository archived or deleted

---

## Rollback Plan

If something goes wrong:
```bash
# Just go back to the original
cd ../voteout-original
# Everything is still there, unchanged
```

The old repository remains untouched until you're confident the new one works.
