// VoteOut Database Type Exports
// Simplified for public service model - no auth required for core features

import { Database } from "@/lib/db/database";

// Core VoteOut Types
export type BallotCache = Database["public"]["Tables"]["ballot_cache"]["Row"];
export type MailingQueue = Database["public"]["Tables"]["mailing_queue"]["Row"];
export type UsageStats = Database["public"]["Tables"]["usage_stats"]["Row"];

// Insert/Update Types
export type BallotCacheInsert = Database["public"]["Tables"]["ballot_cache"]["Insert"];
export type BallotCacheUpdate = Database["public"]["Tables"]["ballot_cache"]["Update"];

export type MailingQueueInsert = Database["public"]["Tables"]["mailing_queue"]["Insert"];
export type MailingQueueUpdate = Database["public"]["Tables"]["mailing_queue"]["Update"];

export type UsageStatsInsert = Database["public"]["Tables"]["usage_stats"]["Insert"];
export type UsageStatsUpdate = Database["public"]["Tables"]["usage_stats"]["Update"];

// View Types
export type DailyMailingStats = Database["public"]["Views"]["daily_mailing_stats"]["Row"];
export type BallotLookupsByState = Database["public"]["Views"]["ballot_lookups_by_state"]["Row"];

// Mailing Status Type
export type MailingStatus = 'pending' | 'processing' | 'sent' | 'failed' | 'cancelled';

// Event Type
export type EventType = 'ballot_lookup' | 'pdf_download' | 'mailing_request';
