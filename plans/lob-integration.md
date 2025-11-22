# Lob API Integration Plan - Physical Mailing Service

## Overview

**Lob** is a print-and-mail automation API that enables VoteOut to send physical ballot guide postcards to voters who cannot print at home. This is a critical equity feature that ensures VoteOut serves all voters, regardless of their access to printers or digital literacy.

### Why Lob?

- **Print Accessibility**: Not everyone has a printer (especially low-income, elderly, or mobile-first users)
- **Physical Preference**: Some voters prefer paper over digital devices at the polls
- **No-barrier Access**: Free mailing removes cost as a barrier to informed voting
- **USPS Integration**: Lob handles printing, addressing, stamping, and mailing automatically
- **Tracking**: Delivery confirmation ensures cards arrive before election day

### Service Details

- **Website**: https://lob.com
- **Pricing**: ~$0.63 per postcard (4"x6" format, full-color, USPS First Class)
- **Delivery Time**: 3-5 business days (domestic US)
- **Features**: Address validation, tracking, delivery confirmation, webhooks
- **API Docs**: https://docs.lob.com

---

## Business Context

### Target Audience

From grant applications:

> **Year 1 Goal**: Serve 10,000 voters, with 2,000 free mailed cards

**Voter Segments Most Likely to Request Mailing**:

- Seniors (less likely to have printers, prefer paper)
- Low-income voters (printer access barriers)
- Rural voters (may lack easy printing access)
- Mobile-first users (smartphone only, no computer/printer)
- Voters with disabilities (screen readers work better with physical card)

### Cost Analysis

**Per-Card Cost**: $0.63

- Printing: ~$0.15
- Postage (First Class): ~$0.40
- Processing fee: ~$0.08

**Budget Impact** (assuming 2,000 cards in Year 1):

- Total cost: 2,000 × $0.63 = **$1,260**
- Percentage of $50K budget: **2.5%**

**Cost Controls**:

- Daily limit: 100 cards/day max (prevents abuse/spam)
- Rate limiting: 1 request per address per election
- Manual review queue for suspicious patterns
- Disable feature if budget exhausted

---

## Current State

### What We Have

1. **Database Schema** (supabase/migrations/20250113000000_voteout_schema.sql:30-51)
   - `mailing_queue` table with Lob-specific fields
   - Status tracking: pending → processing → sent/failed
   - Error logging and retry support
   - Links to ballot cache for card generation

2. **Card Design Spec** (plans/card-design.md)
   - 4"x6" postcard format (USPS standard)
   - Front: VoteOut branding, QR code, address
   - Back: Incumbent/non-incumbent candidates
   - Print-ready design guidelines

3. **Environment Variables** (.env.example)
   - `LOB_API_KEY` placeholder
   - `LOB_WEBHOOK_SECRET` for delivery webhooks
   - `MAILING_ENABLED` feature flag
   - `MAILING_DAILY_LIMIT` cost control

4. **Usage Analytics** (usage_stats table)
   - Tracks `mailing_request` events
   - Geographic distribution (state/county/zip)
   - No PII stored

### What's Missing

- ❌ Lob API client implementation
- ❌ Postcard HTML/PDF template generation
- ❌ Mailing request API endpoint
- ❌ Queue processing worker
- ❌ Webhook handler for delivery tracking
- ❌ User-facing mailing request UI
- ❌ Admin dashboard for queue management
- ❌ Cost tracking and budget alerts

---

## Implementation Plan

### Phase 1: API Client & Types (3-4 hours)

**Goal**: Build Lob API wrapper with TypeScript types

#### 1.1 Install Lob SDK

```bash
npm install lob
npm install --save-dev @types/lob
```

#### 1.2 Create API Client

**File**: `src/lib/api/lob.ts`

```typescript
import Lob from 'lob';
import type { Address } from '@/types/ballot';

export interface LobPostcardRequest {
  description: string;
  to: LobAddress;
  from: LobAddress;
  front: string; // HTML or PDF URL
  back: string; // HTML or PDF URL
  size: '4x6' | '6x9' | '6x11';
  merge_variables?: Record<string, string>;
}

export interface LobAddress {
  name?: string;
  address_line1: string;
  address_line2?: string;
  address_city: string;
  address_state: string;
  address_zip: string;
  address_country?: string;
}

export interface LobPostcardResponse {
  id: string; // Lob postcard ID (ltr_xxxx)
  url: string; // Tracking URL
  expected_delivery_date: string;
  send_date: string;
  carrier: string; // "USPS"
  tracking_number?: string;
}

export class LobAPI {
  private client: Lob;
  private fromAddress: LobAddress;

  constructor(apiKey: string, fromAddress: LobAddress) {
    this.client = new Lob(apiKey);
    this.fromAddress = fromAddress;
  }

  /**
   * Send a ballot guide postcard
   */
  async sendPostcard(request: LobPostcardRequest): Promise<LobPostcardResponse>;

  /**
   * Verify an address using Lob's USPS database
   */
  async verifyAddress(address: Address): Promise<LobAddress>;

  /**
   * Get postcard delivery status
   */
  async getPostcardStatus(lobId: string): Promise<any>;

  /**
   * Cancel a postcard (only works if not yet sent)
   */
  async cancelPostcard(lobId: string): Promise<void>;
}
```

#### 1.3 Environment Configuration

**Update**: `.env.local`

```bash
# Lob API Configuration
LOB_API_KEY=your_lob_api_key_here
LOB_WEBHOOK_SECRET=whsec_xxxxx # For webhook signature verification
MAILING_ENABLED=false # Set to true when ready to launch
MAILING_DAILY_LIMIT=100

# VoteOut return address for postcards
LOB_FROM_NAME=VoteOut
LOB_FROM_ADDRESS_LINE1=123 Democracy Lane
LOB_FROM_CITY=San Francisco
LOB_FROM_STATE=CA
LOB_FROM_ZIP=94102
```

**Note**: Return address is required by USPS. Use organization's registered address or PO Box.

---

### Phase 2: Postcard Template Generation (4-6 hours)

**Goal**: Generate print-ready postcard HTML from ballot data

#### 2.1 Create Template Service

**File**: `src/lib/services/postcard-template.ts`

```typescript
import type { Ballot, Contest } from '@/types/ballot';

export class PostcardTemplateService {
  /**
   * Generate front side HTML (branding + address)
   */
  generateFront(ballot: Ballot): string {
    return `
      <!DOCTYPE html>
      <html>
        <head>
          <style>
            /* 4x6 postcard styles (CMYK color space, 300 DPI) */
            @page { size: 6in 4in; margin: 0; }
            body {
              width: 6in;
              height: 4in;
              margin: 0;
              font-family: Arial, sans-serif;
            }
            /* ... styling based on card-design.md ... */
          </style>
        </head>
        <body>
          <!-- VoteOut logo, election info, voter address, QR code -->
        </body>
      </html>
    `;
  }

  /**
   * Generate back side HTML (ballot contests)
   */
  generateBack(ballot: Ballot): string {
    // Filter to top 3-4 races (space constraints)
    const topRaces = this.selectTopRaces(ballot.contests);

    return `
      <!DOCTYPE html>
      <html>
        <head>
          <style>
            /* Compact ballot guide styles */
          </style>
        </head>
        <body>
          ${this.renderContests(topRaces)}
          <footer>
            voteout.org | Nonpartisan | Not authorized by any candidate
          </footer>
        </body>
      </html>
    `;
  }

  /**
   * Select top races to fit on postcard
   * Priority: Federal > State > Local, by number of candidates
   */
  private selectTopRaces(contests: Contest[]): Contest[] {
    const sorted = contests
      .sort((a, b) => {
        const levelPriority = { federal: 0, state: 1, local: 2 };
        return levelPriority[a.level] - levelPriority[b.level];
      })
      .slice(0, 4); // Max 4 races on 4x6 card

    return sorted;
  }

  private renderContests(contests: Contest[]): string {
    // Generate HTML for each contest with incumbent indicators
  }
}
```

**Design Considerations**:

- **Color Space**: CMYK for print (not RGB)
- **Resolution**: 300 DPI minimum
- **Safe Zone**: 0.125" margin from edges (print bleed)
- **Font Size**: Minimum 10pt for readability
- **Contrast**: High contrast for accessibility (WCAG AA)

#### 2.2 QR Code Generation

**Install**: `npm install qrcode`

**Purpose**: QR code links to full ballot on VoteOut website

```typescript
import QRCode from 'qrcode';

async function generateQRCode(ballotId: string): Promise<string> {
  const url = `${process.env.NEXT_PUBLIC_APP_URL}/ballot/${ballotId}`;
  const qrCodeDataUrl = await QRCode.toDataURL(url, {
    width: 200,
    margin: 1,
    errorCorrectionLevel: 'M',
  });
  return qrCodeDataUrl;
}
```

---

### Phase 3: Mailing Request API (3-4 hours)

**Goal**: Build API endpoint for users to request mailed cards

#### 3.1 Create API Route

**File**: `src/app/api/mailing/request/route.ts`

```typescript
import { NextRequest, NextResponse } from 'next/server';
import { supabaseClient } from '@/lib/db/server-side/supabase-client';
import { MailingService } from '@/lib/services/mailing-service';

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { ballotId, mailingAddress, email } = body;

    // 1. Validate inputs
    if (!ballotId || !mailingAddress) {
      return NextResponse.json(
        { error: 'Missing required fields' },
        { status: 400 },
      );
    }

    // 2. Check if mailing is enabled
    if (process.env.MAILING_ENABLED !== 'true') {
      return NextResponse.json(
        { error: 'Mailing service is currently unavailable' },
        { status: 503 },
      );
    }

    // 3. Rate limiting - check if address already requested
    const existing = await supabaseClient
      .from('mailing_queue')
      .select('id')
      .eq('ballot_cache_id', ballotId)
      .eq('mailing_address', mailingAddress)
      .maybeSingle();

    if (existing.data) {
      return NextResponse.json(
        { error: 'Card already requested for this address' },
        { status: 429 },
      );
    }

    // 4. Check daily limit
    const dailyCount = await getDailyMailingCount();
    const dailyLimit = parseInt(process.env.MAILING_DAILY_LIMIT || '100');
    if (dailyCount >= dailyLimit) {
      return NextResponse.json(
        { error: 'Daily mailing limit reached. Please try tomorrow.' },
        { status: 429 },
      );
    }

    // 5. Create mailing request
    const mailingService = new MailingService();
    const mailingRequest = await mailingService.createRequest({
      ballotId,
      mailingAddress,
      email,
    });

    // 6. Track usage stat
    await trackUsageStat('mailing_request', mailingAddress);

    return NextResponse.json({
      success: true,
      mailingId: mailingRequest.id,
      estimatedDelivery: mailingRequest.estimatedDelivery,
    });
  } catch (error) {
    console.error('Mailing request error:', error);
    return NextResponse.json(
      { error: 'Failed to process mailing request' },
      { status: 500 },
    );
  }
}

async function getDailyMailingCount(): Promise<number> {
  const today = new Date().toISOString().split('T')[0];
  const { count } = await supabaseClient
    .from('mailing_queue')
    .select('id', { count: 'exact', head: true })
    .gte('created_at', `${today}T00:00:00Z`)
    .lt('created_at', `${today}T23:59:59Z`);

  return count || 0;
}
```

#### 3.2 Create Mailing Service

**File**: `src/lib/services/mailing-service.ts`

```typescript
import { LobAPI } from '@/lib/api/lob';
import { PostcardTemplateService } from './postcard-template';
import { supabaseClient } from '@/lib/db/server-side/supabase-client';
import type { Ballot } from '@/types/ballot';

export class MailingService {
  private lobApi: LobAPI;
  private templateService: PostcardTemplateService;

  constructor() {
    const fromAddress = {
      name: process.env.LOB_FROM_NAME!,
      address_line1: process.env.LOB_FROM_ADDRESS_LINE1!,
      address_city: process.env.LOB_FROM_CITY!,
      address_state: process.env.LOB_FROM_STATE!,
      address_zip: process.env.LOB_FROM_ZIP!,
    };

    this.lobApi = new LobAPI(process.env.LOB_API_KEY!, fromAddress);
    this.templateService = new PostcardTemplateService();
  }

  /**
   * Create a new mailing request (adds to queue)
   */
  async createRequest(request: {
    ballotId: string;
    mailingAddress: string;
    email?: string;
  }): Promise<any> {
    // 1. Get ballot from cache
    const ballot = await this.getBallotFromCache(request.ballotId);

    // 2. Verify mailing address with Lob
    const verifiedAddress = await this.lobApi.verifyAddress(
      this.parseAddress(request.mailingAddress),
    );

    // 3. Insert into queue as 'pending'
    const { data: queueEntry, error } = await supabaseClient
      .from('mailing_queue')
      .insert({
        ballot_cache_id: request.ballotId,
        voter_address: ballot.address,
        mailing_address: request.mailingAddress,
        email: request.email,
        status: 'pending',
      })
      .select()
      .single();

    if (error) throw error;

    return queueEntry;
  }

  /**
   * Process pending mailing requests (called by queue worker)
   */
  async processPending(): Promise<void> {
    const { data: pending } = await supabaseClient
      .from('mailing_queue')
      .select('*')
      .eq('status', 'pending')
      .limit(10); // Process in batches

    for (const request of pending || []) {
      await this.sendPostcard(request);
    }
  }

  /**
   * Send a single postcard via Lob API
   */
  private async sendPostcard(queueEntry: any): Promise<void> {
    try {
      // 1. Update status to 'processing'
      await this.updateQueueStatus(queueEntry.id, 'processing');

      // 2. Get ballot data
      const ballot = await this.getBallotFromCache(queueEntry.ballot_cache_id);

      // 3. Generate postcard HTML
      const frontHtml = this.templateService.generateFront(ballot);
      const backHtml = this.templateService.generateBack(ballot);

      // 4. Send via Lob
      const response = await this.lobApi.sendPostcard({
        description: `VoteOut Ballot Guide - ${ballot.electionName}`,
        to: this.parseAddress(queueEntry.mailing_address),
        front: frontHtml,
        back: backHtml,
        size: '4x6',
      });

      // 5. Update queue with Lob response
      await supabaseClient
        .from('mailing_queue')
        .update({
          status: 'sent',
          lob_mail_id: response.id,
          tracking_url: response.url,
          sent_at: new Date().toISOString(),
        })
        .eq('id', queueEntry.id);

      // 6. Send email confirmation (if provided)
      if (queueEntry.email) {
        await this.sendEmailConfirmation(queueEntry.email, response);
      }
    } catch (error) {
      // Update queue with error
      await supabaseClient
        .from('mailing_queue')
        .update({
          status: 'failed',
          error_message:
            error instanceof Error ? error.message : 'Unknown error',
        })
        .eq('id', queueEntry.id);

      console.error('Failed to send postcard:', error);
    }
  }

  private async getBallotFromCache(ballotId: string): Promise<Ballot> {
    const { data } = await supabaseClient
      .from('ballot_cache')
      .select('ballot_data')
      .eq('id', ballotId)
      .single();

    return data.ballot_data;
  }

  private parseAddress(address: string): any {
    // TODO: Implement address parsing
    // For now, assume structured input
  }

  private async updateQueueStatus(id: string, status: string): Promise<void> {
    await supabaseClient.from('mailing_queue').update({ status }).eq('id', id);
  }
}
```

---

### Phase 4: Queue Worker & Processing (3-4 hours)

**Goal**: Background job to process mailing queue automatically

#### 4.1 Queue Worker Implementation

**Option A: Vercel Cron Job** (Recommended for MVP)

**File**: `src/app/api/cron/process-mailings/route.ts`

```typescript
import { NextRequest, NextResponse } from 'next/server';
import { MailingService } from '@/lib/services/mailing-service';

// This endpoint is called by Vercel Cron every 5 minutes
// Configure in vercel.json: "crons": [{"path": "/api/cron/process-mailings", "schedule": "*/5 * * * *"}]
export async function GET(request: NextRequest) {
  // Verify cron secret to prevent unauthorized calls
  const authHeader = request.headers.get('authorization');
  if (authHeader !== `Bearer ${process.env.CRON_SECRET}`) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  try {
    const mailingService = new MailingService();
    await mailingService.processPending();

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('Queue processing error:', error);
    return NextResponse.json(
      { error: 'Queue processing failed' },
      { status: 500 },
    );
  }
}
```

**File**: `vercel.json`

```json
{
  "crons": [
    {
      "path": "/api/cron/process-mailings",
      "schedule": "*/5 * * * *"
    }
  ]
}
```

**Option B: Manual Trigger** (For development/testing)

Create admin-only endpoint that can be called manually to process queue.

#### 4.2 Processing Logic

**Queue Processing Rules**:

1. Fetch up to 10 pending requests
2. Process sequentially (avoid Lob rate limits)
3. Update status after each send
4. Log errors but continue processing
5. Send email confirmations when available
6. Retry failed requests (max 3 attempts)

**Retry Logic**:

```typescript
async function retryFailed(): Promise<void> {
  const { data: failed } = await supabaseClient
    .from('mailing_queue')
    .select('*')
    .eq('status', 'failed')
    .lt('retry_count', 3)
    .order('created_at', { ascending: true })
    .limit(5);

  for (const request of failed || []) {
    await supabaseClient
      .from('mailing_queue')
      .update({ status: 'pending', retry_count: request.retry_count + 1 })
      .eq('id', request.id);
  }
}
```

---

### Phase 5: Webhook Handler (2-3 hours)

**Goal**: Receive delivery updates from Lob via webhooks

#### 5.1 Create Webhook Endpoint

**File**: `src/app/api/webhooks/lob/route.ts`

```typescript
import { NextRequest, NextResponse } from 'next/server';
import crypto from 'crypto';
import { supabaseClient } from '@/lib/db/server-side/supabase-client';

export async function POST(request: NextRequest) {
  try {
    const body = await request.text();
    const signature = request.headers.get('lob-signature');

    // 1. Verify webhook signature
    if (!verifyWebhookSignature(body, signature!)) {
      return NextResponse.json({ error: 'Invalid signature' }, { status: 401 });
    }

    const event = JSON.parse(body);

    // 2. Handle different event types
    switch (event.event_type.id) {
      case 'postcard.created':
        // Postcard was created successfully
        break;

      case 'postcard.rendered_pdf':
        // PDF was generated (can download for preview)
        await handleRenderedPdf(event);
        break;

      case 'postcard.in_transit':
        // Postcard is in USPS system
        await handleInTransit(event);
        break;

      case 'postcard.in_local_area':
        // Near delivery
        await handleInLocalArea(event);
        break;

      case 'postcard.delivered':
        // Successfully delivered!
        await handleDelivered(event);
        break;

      case 'postcard.failed':
        // Delivery failed (bad address, returned to sender)
        await handleFailed(event);
        break;

      default:
        console.log('Unhandled Lob event:', event.event_type.id);
    }

    return NextResponse.json({ received: true });
  } catch (error) {
    console.error('Webhook error:', error);
    return NextResponse.json(
      { error: 'Webhook processing failed' },
      { status: 500 },
    );
  }
}

function verifyWebhookSignature(payload: string, signature: string): boolean {
  const secret = process.env.LOB_WEBHOOK_SECRET!;
  const hmac = crypto.createHmac('sha256', secret);
  hmac.update(payload);
  const expectedSignature = hmac.digest('hex');

  return crypto.timingSafeEqual(
    Buffer.from(signature),
    Buffer.from(expectedSignature),
  );
}

async function handleDelivered(event: any): Promise<void> {
  const lobId = event.body.id;

  await supabaseClient
    .from('mailing_queue')
    .update({
      status: 'delivered', // Add this status to CHECK constraint
      delivered_at: new Date().toISOString(),
    })
    .eq('lob_mail_id', lobId);

  // Send "delivered" email notification if email provided
}

async function handleFailed(event: any): Promise<void> {
  const lobId = event.body.id;
  const reason = event.body.failure_reason;

  await supabaseClient
    .from('mailing_queue')
    .update({
      status: 'failed',
      error_message: `Delivery failed: ${reason}`,
    })
    .eq('lob_mail_id', lobId);
}
```

#### 5.2 Configure Webhook in Lob Dashboard

1. Go to https://dashboard.lob.com/webhooks
2. Click "Add Webhook"
3. URL: `https://yourdomain.com/api/webhooks/lob`
4. Events to subscribe:
   - `postcard.rendered_pdf`
   - `postcard.in_transit`
   - `postcard.delivered`
   - `postcard.failed`
5. Copy webhook secret to `LOB_WEBHOOK_SECRET` env var

---

### Phase 6: User Interface (4-5 hours)

**Goal**: Build UI for users to request mailed cards

#### 6.1 Mailing Request Form Component

**File**: `src/components/ballot/MailingRequestForm.tsx`

```typescript
'use client';

import { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Alert } from '@/components/ui/alert';

export function MailingRequestForm({ ballotId }: { ballotId: string }) {
  const [address, setAddress] = useState('');
  const [email, setEmail] = useState('');
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');

    try {
      const response = await fetch('/api/mailing/request', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ballotId,
          mailingAddress: address,
          email,
        }),
      });

      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.error || 'Failed to request mailing');
      }

      setSuccess(true);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Unknown error');
    } finally {
      setLoading(false);
    }
  };

  if (success) {
    return (
      <Alert>
        <h3>Card Requested!</h3>
        <p>
          Your ballot guide will arrive in 3-5 business days.
          {email && ' We\'ll send tracking info to your email.'}
        </p>
      </Alert>
    );
  }

  return (
    <form onSubmit={handleSubmit}>
      <h3>Can't Print? We'll Mail You a Card (Free!)</h3>

      <Input
        type="text"
        placeholder="Mailing Address"
        value={address}
        onChange={(e) => setAddress(e.target.value)}
        required
      />

      <Input
        type="email"
        placeholder="Email (optional, for tracking)"
        value={email}
        onChange={(e) => setEmail(e.target.value)}
      />

      {error && <Alert variant="error">{error}</Alert>}

      <Button type="submit" disabled={loading}>
        {loading ? 'Requesting...' : 'Mail Me a Card'}
      </Button>

      <p className="text-sm text-gray-600">
        Free mailing sponsored by civic engagement grants.
        Limit one card per address per election.
      </p>
    </form>
  );
}
```

#### 6.2 Integrate into Ballot View

**File**: `src/app/ballot/[id]/page.tsx`

```typescript
import { MailingRequestForm } from '@/components/ballot/MailingRequestForm';

export default function BallotPage({ params }: { params: { id: string } }) {
  // ... existing ballot display code ...

  return (
    <div>
      {/* Ballot display */}

      {/* Download PDF button */}

      {/* Mailing request form */}
      <MailingRequestForm ballotId={params.id} />
    </div>
  );
}
```

---

## Cost Management & Fraud Prevention

### Daily Limits

**Implementation**:

```typescript
const DAILY_LIMIT = parseInt(process.env.MAILING_DAILY_LIMIT || '100');

async function checkDailyLimit(): Promise<boolean> {
  const count = await getDailyMailingCount();
  return count < DAILY_LIMIT;
}
```

**Budget Alerts**:

- Send email to admin when 80% of daily limit reached
- Display "Daily limit reached" message to users
- Auto-disable feature if monthly budget exhausted

### Fraud Prevention

**Rate Limiting**:

1. **Per Address**: Max 1 card per address per election
2. **Per IP**: Max 3 requests per IP per day
3. **Per Email**: Max 5 unique addresses per email

**Abuse Detection**:

```typescript
async function detectAbuse(request: MailingRequest): Promise<boolean> {
  // Check for suspicious patterns:
  // - Same IP requesting many different addresses
  // - Sequential address numbers (123 Main, 124 Main, 125 Main)
  // - Temporary/disposable email domains
  // - PO boxes in bulk (potential reseller)

  const recentFromIP = await getRecentRequestsByIP(request.ip);
  if (recentFromIP.length > 3) {
    return true; // Suspicious
  }

  return false;
}
```

**Manual Review Queue**:

- Flag suspicious requests for manual approval
- Admin dashboard shows flagged requests
- Approve/reject before sending to Lob

### Cost Tracking

**Database Addition**:

```sql
ALTER TABLE mailing_queue
ADD COLUMN cost_usd DECIMAL(5,2) DEFAULT 0.63;

-- Monthly cost summary view
CREATE VIEW monthly_mailing_costs AS
SELECT
  DATE_TRUNC('month', created_at) as month,
  COUNT(*) as total_mailings,
  SUM(cost_usd) as total_cost,
  COUNT(*) FILTER (WHERE status = 'sent') as successful,
  COUNT(*) FILTER (WHERE status = 'failed') as failed
FROM mailing_queue
GROUP BY DATE_TRUNC('month', created_at)
ORDER BY month DESC;
```

---

## Testing Strategy

### Phase 1: Lob Test Mode

Lob provides a test API key for development:

- Test cards are not actually mailed
- Full API response simulation
- PDF preview available
- Webhooks work normally
- **Cost**: $0 (free testing)

**Setup**:

```bash
# Use test key (starts with "test_")
LOB_API_KEY=test_xxxxx
```

### Phase 2: Unit Tests

**File**: `src/lib/api/__tests__/lob.test.ts`

```typescript
describe('LobAPI', () => {
  it('should verify valid address', async () => {
    const api = new LobAPI(testApiKey, fromAddress);
    const verified = await api.verifyAddress({
      line1: '1600 Pennsylvania Ave NW',
      city: 'Washington',
      state: 'DC',
      zip: '20500',
    });

    expect(verified.address_city).toBe('WASHINGTON');
    expect(verified.deliverability).toBe('deliverable');
  });

  it('should reject invalid address', async () => {
    // Test with obviously fake address
  });

  it('should send postcard in test mode', async () => {
    const response = await api.sendPostcard({
      to: validAddress,
      front: '<html>...</html>',
      back: '<html>...</html>',
      size: '4x6',
    });

    expect(response.id).toMatch(/^ltr_/);
    expect(response.url).toBeTruthy();
  });
});
```

### Phase 3: Integration Tests

**Test Cases**:

1. ✅ Full flow: Request → Queue → Process → Lob → Webhook
2. ✅ Address validation catches invalid addresses
3. ✅ Daily limit enforcement
4. ✅ Duplicate request detection
5. ✅ Error handling and retry logic
6. ✅ Webhook signature verification
7. ✅ Cost tracking updates correctly

### Phase 4: Manual Testing

**Pre-Launch Checklist**:

- [ ] Send test postcard to yourself
- [ ] Verify card design prints correctly
- [ ] Check color accuracy (CMYK)
- [ ] Confirm delivery time (3-5 days)
- [ ] Test email confirmation
- [ ] Test webhook delivery status
- [ ] Verify USPS tracking link works
- [ ] Test with invalid address (should reject)
- [ ] Test daily limit enforcement
- [ ] Test duplicate request blocking

---

## Security Considerations

### 1. API Key Protection

**Never commit API keys**:

```bash
# .gitignore
.env
.env.local
.env.production
```

**Use environment variables**:

- Vercel: Add in dashboard → Settings → Environment Variables
- Development: Use `.env.local` (git-ignored)

### 2. Webhook Signature Verification

**Always verify Lob webhooks**:

```typescript
// Reject webhooks with invalid signatures
if (!verifyWebhookSignature(body, signature)) {
  return new Response('Invalid signature', { status: 401 });
}
```

### 3. Address Validation

**Prevent fake/malicious addresses**:

- Use Lob's address verification API
- Reject undeliverable addresses
- Flag PO boxes if suspicious pattern detected

### 4. Rate Limiting

**Protect against abuse**:

- IP-based rate limiting (3 requests/day)
- Address-based deduplication (1 per election)
- CAPTCHA for high-risk requests

### 5. Cost Controls

**Prevent budget overrun**:

- Hard daily limit (100 cards)
- Monthly budget cap with alerts
- Manual approval queue for suspicious requests
- Kill switch to disable feature immediately

---

## Rollout Plan

### Step 1: Development & Testing (Week 1)

- [ ] Set up Lob test account
- [ ] Implement API client and services
- [ ] Build postcard templates
- [ ] Create mailing request API
- [ ] Test in Lob test mode

### Step 2: Internal Testing (Week 2)

- [ ] Switch to Lob production API
- [ ] Send test postcards to team members
- [ ] Verify print quality and delivery
- [ ] Test all error scenarios
- [ ] Load test queue processing

### Step 3: Soft Launch (Week 3)

- [ ] Enable for 10% of users (A/B test)
- [ ] Daily limit: 10 cards/day
- [ ] Monitor cost and usage
- [ ] Collect user feedback
- [ ] Fix any issues

### Step 4: Full Launch (Week 4)

- [ ] Enable for 100% of users
- [ ] Daily limit: 100 cards/day
- [ ] Marketing announcement
- [ ] Monitor daily/monthly costs
- [ ] Weekly review of usage patterns

---

## Monitoring & Analytics

### Key Metrics

**Usage**:

- Mailing requests per day
- Conversion rate (ballot views → mailing requests)
- Geographic distribution (which states use mailing most)

**Performance**:

- Queue processing time (pending → sent)
- Delivery success rate (sent → delivered)
- Failed delivery reasons

**Cost**:

- Daily/monthly mailing costs
- Cost per successful delivery
- Budget utilization (% of monthly cap)

**Quality**:

- User-reported issues (wrong address, didn't arrive)
- Webhook delivery status accuracy
- Address verification failure rate

### Dashboards

**Admin Dashboard** (build later):

- Real-time queue status
- Daily cost tracker
- Flagged requests for manual review
- Failed deliveries and reasons

**Usage Analytics** (Supabase views):

```sql
-- Daily mailing volume
SELECT
  DATE(created_at) as date,
  COUNT(*) as requests,
  COUNT(*) FILTER (WHERE status = 'sent') as sent,
  SUM(cost_usd) as cost
FROM mailing_queue
GROUP BY DATE(created_at)
ORDER BY date DESC
LIMIT 30;
```

---

## Future Enhancements

### 1. Template Customization

- Multiple card designs (compact vs detailed)
- Language selection (Spanish, Chinese, etc.)
- Include local measures/propositions
- Personalized "Hello [Name]" on front

### 2. Premium Features

- Expedited shipping (2-day delivery)
- Larger postcard size (6"x9")
- Send to multiple addresses (family members)
- Historical voting record on back

### 3. Partner Integration

- Nonprofits can sponsor mailings for their communities
- Bulk mailing for get-out-the-vote campaigns
- White-label for partner organizations

### 4. Analytics & Insights

- Track correlation: mailed cards → voter turnout
- Geographic heat maps of mailing requests
- Demographic analysis (age, income proxy via zip)

---

## Appendix: Lob API Examples

### Example 1: Verify Address

**Request**:

```bash
curl https://api.lob.com/v1/us_verifications \
  -u test_api_key: \
  -d "primary_line=1600 Pennsylvania Ave NW" \
  -d "city=Washington" \
  -d "state=DC" \
  -d "zip_code=20500"
```

**Response**:

```json
{
  "id": "us_ver_xxx",
  "primary_line": "1600 PENNSYLVANIA AVE NW",
  "city": "WASHINGTON",
  "state": "DC",
  "zip_code": "20500-0005",
  "deliverability": "deliverable",
  "components": {
    "primary_number": "1600",
    "street_name": "PENNSYLVANIA",
    "street_suffix": "AVE",
    "street_postdirection": "NW"
  }
}
```

### Example 2: Send Postcard

**Request**:

```bash
curl https://api.lob.com/v1/postcards \
  -u live_api_key: \
  -d "description=VoteOut Ballot Guide" \
  -d "to[name]=Jane Voter" \
  -d "to[address_line1]=123 Main St" \
  -d "to[address_city]=San Francisco" \
  -d "to[address_state]=CA" \
  -d "to[address_zip]=94102" \
  -d "from[name]=VoteOut" \
  -d "from[address_line1]=456 Democracy Ln" \
  -d "from[address_city]=San Francisco" \
  -d "from[address_state]=CA" \
  -d "from[address_zip]=94103" \
  -d "front=<html><body>Front HTML</body></html>" \
  -d "back=<html><body>Back HTML</body></html>" \
  -d "size=4x6"
```

**Response**:

```json
{
  "id": "psc_xxx",
  "description": "VoteOut Ballot Guide",
  "to": { ... },
  "from": { ... },
  "url": "https://lob.com/postcards/psc_xxx",
  "carrier": "USPS",
  "tracking_number": "9400100000000000000000",
  "expected_delivery_date": "2024-11-02",
  "send_date": "2024-10-28",
  "size": "4x6"
}
```

### Example 3: Webhook Event

**Delivered Event**:

```json
{
  "id": "evt_xxx",
  "event_type": {
    "id": "postcard.delivered",
    "enabled_for_test": true
  },
  "body": {
    "id": "psc_xxx",
    "description": "VoteOut Ballot Guide",
    "tracking_events": [
      {
        "type": "delivered",
        "time": "2024-11-02T10:30:00Z",
        "location": "SAN FRANCISCO, CA 94102"
      }
    ]
  },
  "date_created": "2024-11-02T10:30:00Z"
}
```

---

## References

- **Lob Documentation**: https://docs.lob.com
- **Lob API Reference**: https://docs.lob.com/api/
- **Address Verification**: https://docs.lob.com/verification/
- **Postcard Specs**: https://docs.lob.com/postcards/
- **Webhook Guide**: https://docs.lob.com/webhooks/
- **Print Design Guide**: https://help.lob.com/print-and-mail/design-resources

---

## Questions for Team Review

1. Should we offer expedited shipping (2-day) as an option?
2. What should the daily/monthly mailing limits be?
3. Do we want to collect phone numbers for SMS tracking updates?
4. Should we build an admin dashboard for queue management first?
5. How do we handle election day urgency (requests too close to election)?
6. Should we partner with nonprofits to sponsor mailings for specific communities?
7. What's our policy on PO boxes vs residential addresses?

---

**Document Version**: 1.0
**Last Updated**: 2025-01-22
**Author**: Claude (AI Planning Assistant)
**Status**: Draft - Awaiting Team Review
**Estimated Implementation Time**: 18-25 hours
**Estimated Cost (Year 1)**: $1,260 (2,000 cards @ $0.63)
