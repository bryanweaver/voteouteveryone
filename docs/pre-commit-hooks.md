# Pre-Commit Hooks

This project uses [Husky](https://typicode.github.io/husky/) and [lint-staged](https://github.com/okonet/lint-staged) to automatically run quality checks before each commit.

## What Runs on Pre-Commit?

Every time you run `git commit`, the following checks run automatically:

### 1. Type Checking (TypeScript)

```bash
npm run type-check
```

- Validates all TypeScript types
- Ensures no type errors exist
- Uses `tsc --noEmit` (no files generated)

### 2. Lint-Staged (Format & Lint)

```bash
npx lint-staged
```

- **For `.ts`, `.tsx`, `.js`, `.jsx` files:**
  - Formats with Prettier
  - Lints with ESLint
  - Auto-fixes fixable issues

- **For `.json`, `.md`, `.css` files:**
  - Formats with Prettier

**Note:** Only runs on **staged files**, not the entire codebase!

### 3. Unit Tests

```bash
npm run test:run
```

- Runs all Vitest unit tests
- Must pass 100% (226 tests)
- Runs in single-pass mode (not watch)

## If a Check Fails

If any check fails, the commit is **blocked**. You'll see output like:

```
🔍 Running type check...
❌ Type check failed! Fix errors and try again.
```

### How to Fix:

1. **Type errors**: Fix the TypeScript errors shown in the output
2. **Lint errors**: Run `npm run lint:fix` to auto-fix
3. **Format errors**: Run `npm run format` to auto-format
4. **Test failures**: Fix the failing tests

Then stage your fixes and commit again:

```bash
git add .
git commit -m "your message"
```

## Bypassing Hooks (NOT Recommended)

In emergencies only, you can bypass hooks:

```bash
git commit --no-verify -m "emergency fix"
```

**⚠️ Warning:** This skips all quality checks. Use sparingly!

## Manual Quality Checks

You can run these checks manually anytime:

```bash
# Run all checks at once
npm run validate

# Run individually
npm run type-check    # TypeScript
npm run lint          # ESLint
npm run lint:fix      # ESLint with auto-fix
npm run format        # Prettier format
npm run format:check  # Check formatting
npm run test          # Tests (watch mode)
npm run test:run      # Tests (single run)
npm run test:coverage # Tests with coverage
```

## Configuration Files

- **Husky**: `.husky/pre-commit`
- **lint-staged**: `package.json` (`lint-staged` field)
- **ESLint**: `.eslintrc.json`
- **Prettier**: `.prettierrc`
- **TypeScript**: `tsconfig.json`
- **Vitest**: `vitest.config.ts`

## Benefits

✅ **Prevents broken code** from being committed
✅ **Enforces code quality** standards automatically
✅ **Catches bugs early** before they reach production
✅ **Consistent formatting** across the team
✅ **Faster CI/CD** pipelines (fewer failures)

## Disabling Hooks Temporarily

If you need to disable hooks temporarily (for example, during development):

```bash
# Disable hooks
git config core.hooksPath /dev/null

# Re-enable hooks
git config --unset core.hooksPath
```

## Troubleshooting

### Hook doesn't run

```bash
# Reinstall hooks
npm run prepare
```

### Hook fails on Windows

Make sure the `.husky/pre-commit` file has LF line endings (not CRLF).

### Tests take too long

The pre-commit hook runs all tests. If this becomes slow, consider:

- Running only changed test files
- Using `--bail` to stop on first failure
- Skipping tests in pre-commit (keep in CI only)

To modify: Edit `.husky/pre-commit`
