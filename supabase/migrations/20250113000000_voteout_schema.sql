-- VoteOut Schema Migration
-- Creates tables for ballot caching, mailing queue, and usage tracking

-- ============================================
-- BALLOT CACHE TABLE
-- ============================================
-- Stores ballot data to reduce API calls and improve performance
CREATE TABLE IF NOT EXISTS ballot_cache (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  normalized_address TEXT NOT NULL,
  election_id TEXT NOT NULL,
  ballot_data JSONB NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  expires_at TIMESTAMP WITH TIME ZONE NOT NULL,
  UNIQUE(normalized_address, election_id)
);

-- Indexes for fast lookups
CREATE INDEX IF NOT EXISTS idx_ballot_cache_address ON ballot_cache(normalized_address);
CREATE INDEX IF NOT EXISTS idx_ballot_cache_expires ON ballot_cache(expires_at);
CREATE INDEX IF NOT EXISTS idx_ballot_cache_election ON ballot_cache(election_id);

-- Add comment for documentation
COMMENT ON TABLE ballot_cache IS 'Caches ballot data from external APIs to reduce costs and improve performance';

-- ============================================
-- MAILING QUEUE TABLE
-- ============================================
-- Manages physical mailing requests
CREATE TABLE IF NOT EXISTS mailing_queue (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  ballot_cache_id UUID REFERENCES ballot_cache(id) ON DELETE SET NULL,
  voter_address TEXT NOT NULL,
  mailing_address TEXT NOT NULL,
  email TEXT, -- Optional, for tracking notifications
  status TEXT DEFAULT 'pending' CHECK (status IN ('pending', 'processing', 'sent', 'failed', 'cancelled')),
  lob_mail_id TEXT, -- Lob API response ID
  tracking_url TEXT,
  error_message TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  processed_at TIMESTAMP WITH TIME ZONE,
  sent_at TIMESTAMP WITH TIME ZONE
);

-- Indexes for queue processing and status tracking
CREATE INDEX IF NOT EXISTS idx_mailing_queue_status ON mailing_queue(status);
CREATE INDEX IF NOT EXISTS idx_mailing_queue_created ON mailing_queue(created_at);
CREATE INDEX IF NOT EXISTS idx_mailing_queue_ballot ON mailing_queue(ballot_cache_id);

-- Add comment for documentation
COMMENT ON TABLE mailing_queue IS 'Queue for processing physical mailing requests via Lob API';

-- ============================================
-- USAGE STATS TABLE
-- ============================================
-- Minimal, privacy-focused analytics
CREATE TABLE IF NOT EXISTS usage_stats (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  event_type TEXT NOT NULL CHECK (event_type IN ('ballot_lookup', 'pdf_download', 'mailing_request')),
  state TEXT, -- State code (e.g., 'CA', 'NY')
  county TEXT,
  zip_code TEXT, -- For geographic analysis, not full address
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indexes for analytics queries
CREATE INDEX IF NOT EXISTS idx_usage_stats_event ON usage_stats(event_type);
CREATE INDEX IF NOT EXISTS idx_usage_stats_created ON usage_stats(created_at);
CREATE INDEX IF NOT EXISTS idx_usage_stats_state ON usage_stats(state);

-- Add comment for documentation
COMMENT ON TABLE usage_stats IS 'Privacy-focused usage analytics (no PII, only aggregated geographic data)';

-- ============================================
-- AUTO-CLEANUP FUNCTION
-- ============================================
-- Automatically delete expired ballot cache entries
CREATE OR REPLACE FUNCTION delete_old_ballot_cache()
RETURNS void AS $$
BEGIN
  DELETE FROM ballot_cache WHERE expires_at < NOW();
END;
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION delete_old_ballot_cache() IS 'Deletes expired ballot cache entries for privacy compliance';

-- ============================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================
-- Enable RLS for privacy and security
ALTER TABLE ballot_cache ENABLE ROW LEVEL SECURITY;
ALTER TABLE mailing_queue ENABLE ROW LEVEL SECURITY;
ALTER TABLE usage_stats ENABLE ROW LEVEL SECURITY;

-- Public read access to ballot cache (cached data is not sensitive)
CREATE POLICY "Public read access to ballot cache"
  ON ballot_cache
  FOR SELECT
  USING (true);

-- Only service role can insert/update/delete ballot cache
CREATE POLICY "Service role can manage ballot cache"
  ON ballot_cache
  FOR ALL
  USING (auth.role() = 'service_role');

-- Only service role can manage mailing queue
CREATE POLICY "Service role can manage mailing queue"
  ON mailing_queue
  FOR ALL
  USING (auth.role() = 'service_role');

-- Only service role can manage usage stats
CREATE POLICY "Service role can manage usage stats"
  ON usage_stats
  FOR ALL
  USING (auth.role() = 'service_role');

-- ============================================
-- HELPER VIEWS
-- ============================================

-- View for daily mailing stats
CREATE OR REPLACE VIEW daily_mailing_stats AS
SELECT
  DATE(created_at) as date,
  COUNT(*) as total_requests,
  COUNT(*) FILTER (WHERE status = 'sent') as sent,
  COUNT(*) FILTER (WHERE status = 'failed') as failed,
  COUNT(*) FILTER (WHERE status = 'pending') as pending
FROM mailing_queue
GROUP BY DATE(created_at)
ORDER BY date DESC;

COMMENT ON VIEW daily_mailing_stats IS 'Daily summary of mailing queue statistics';

-- View for ballot lookup stats by state
CREATE OR REPLACE VIEW ballot_lookups_by_state AS
SELECT
  state,
  COUNT(*) as lookups,
  DATE(created_at) as date
FROM usage_stats
WHERE event_type = 'ballot_lookup'
GROUP BY state, DATE(created_at)
ORDER BY date DESC, lookups DESC;

COMMENT ON VIEW ballot_lookups_by_state IS 'Ballot lookups aggregated by state and date';
