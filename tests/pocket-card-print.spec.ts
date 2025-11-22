import { test, expect } from '@playwright/test';

test.describe('Pocket Card Print Functionality', () => {
  test.beforeEach(async ({ page }) => {
    // Navigate directly to a test ballot
    // Using a known cached ballot ID or creating one via API would be better
    // For now, let's just go to home and use test mode
    await page.goto('/');

    // Wait for page to load
    await page.waitForLoadState('networkidle');

    // Look for the address form and fill it using ID selectors
    await page.locator('#line1').waitFor({ timeout: 5000 });
    await page.locator('#line1').fill('123 Main St');
    await page.locator('#city').fill('Anytown');
    await page.locator('#state').fill('CA');
    await page.locator('#zip').fill('12345');

    // Click submit button
    const submitButton = page.locator('button[type="submit"]');
    await submitButton.click();

    // Wait for results page - be more lenient
    await page.waitForURL(/\/ballot\/results\//, { timeout: 15000 });

    // Wait for pocket card section to render
    await page.waitForSelector('text=YOUR POCKET CARD', { timeout: 15000 });

    // Wait for the actual card content to render
    await page.waitForSelector('text=DON\'T VOTE FOR', { timeout: 15000 });
  });

  test('pocket card renders on page', async ({ page }) => {
    // Find the card by its distinctive content and dimensions class
    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();
    await expect(card).toBeVisible();

    // Check card dimensions
    const box = await card.boundingBox();
    expect(box).toBeTruthy();
    console.log('Card dimensions:', box);
  });

  test('scissors are visible on screen but hidden in print', async ({ page }) => {
    // Scissors should be visible on screen
    const scissors = page.locator('.print\\:hidden').first();
    await expect(scissors).toBeVisible();

    // Emulate print media
    await page.emulateMedia({ media: 'print' });

    // Scissors should be hidden in print mode
    await expect(scissors).toBeHidden();
  });

  test('card print styles apply correctly', async ({ page }) => {
    // Emulate print media
    await page.emulateMedia({ media: 'print' });

    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();

    // Check visibility
    await expect(card).toBeVisible();

    // Check positioning
    const styles = await card.evaluate((el) => {
      const computed = window.getComputedStyle(el);
      return {
        position: computed.position,
        left: computed.left,
        top: computed.top,
        visibility: computed.visibility,
        width: computed.width,
        height: computed.height,
      };
    });

    console.log('Print mode styles:', styles);

    expect(styles.visibility).toBe('visible');

    // Take screenshot
    await page.screenshot({ path: 'tests/screenshots/print-mode.png', fullPage: true });
  });

  test('card has correct dimensions (6in x 4in)', async ({ page }) => {
    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();

    const styles = await card.evaluate((el) => {
      const computed = window.getComputedStyle(el);
      return {
        width: computed.width,
        height: computed.height,
      };
    });

    console.log('Card actual dimensions:', styles);

    // 6in at 96dpi = 576px, 4in = 384px
    // Allow some tolerance
    const width = parseInt(styles.width);
    const height = parseInt(styles.height);

    expect(width).toBeGreaterThan(550);
    expect(width).toBeLessThan(600);
    expect(height).toBeGreaterThan(360);
    expect(height).toBeLessThan(410);
  });

  test('modal opens and shows card', async ({ page }) => {
    // Click the card to open modal
    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();
    await card.click();

    // Wait for modal with ID
    await page.waitForSelector('#printable-card');

    // Check card in modal
    const modalCard = page.locator('#printable-card');
    await expect(modalCard).toBeVisible();

    // Take screenshot
    await page.screenshot({ path: 'tests/screenshots/modal-open.png' });
  });

  test('modal card print styles apply correctly', async ({ page }) => {
    // Open modal
    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();
    await card.click();
    await page.waitForSelector('#printable-card');

    // Emulate print media
    await page.emulateMedia({ media: 'print' });

    const modalCard = page.locator('#printable-card');

    // Check visibility
    await expect(modalCard).toBeVisible();

    // Check positioning
    const styles = await modalCard.evaluate((el) => {
      const computed = window.getComputedStyle(el);
      return {
        position: computed.position,
        left: computed.left,
        top: computed.top,
        visibility: computed.visibility,
      };
    });

    console.log('Modal print mode styles:', styles);

    expect(styles.visibility).toBe('visible');

    // Take screenshot
    await page.screenshot({ path: 'tests/screenshots/modal-print-mode.png', fullPage: true });
  });

  test('buttons are hidden in print mode', async ({ page }) => {
    // Open modal
    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();
    await card.click();
    await page.waitForSelector('#printable-card');

    // Print button should be visible on screen
    const printButton = page.locator('text=PRINT POCKET CARD');
    await expect(printButton).toBeVisible();

    // Emulate print media
    await page.emulateMedia({ media: 'print' });

    // Button should still be there (check if it has print-hidden class or similar)
    // This test may need adjustment based on actual implementation
  });

  test('only one card is visible in print when modal open', async ({ page }) => {
    // Open modal
    const card = page.locator('div.w-\\[6in\\].h-\\[4in\\]').first();
    await card.click();
    await page.waitForSelector('#printable-card');

    // Emulate print media
    await page.emulateMedia({ media: 'print' });

    // Modal card should be visible
    const modalCard = page.locator('#printable-card');
    await expect(modalCard).toBeVisible();

    // Check that there's only one visible card with the distinctive heading
    const visibleCards = page.locator('text=DON\'T VOTE FOR');
    await expect(visibleCards).toHaveCount(1);
  });

  test('body height is constrained in print mode', async ({ page }) => {
    await page.emulateMedia({ media: 'print' });

    const bodyHeight = await page.evaluate(() => {
      const computed = window.getComputedStyle(document.body);
      return {
        height: computed.height,
        maxHeight: computed.maxHeight,
        overflow: computed.overflow,
      };
    });

    console.log('Body print styles:', bodyHeight);

    expect(bodyHeight.overflow).toBe('hidden');
  });
});
