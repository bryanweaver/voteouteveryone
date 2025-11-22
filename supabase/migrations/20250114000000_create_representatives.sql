-- Representatives Schema Migration
-- Stores current federal, state, and local elected officials

-- ============================================
-- REPRESENTATIVES TABLE
-- ============================================
CREATE TABLE IF NOT EXISTS representatives (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,

  -- Basic Info
  name TEXT NOT NULL,
  office TEXT NOT NULL, -- "President", "U.S. Senator", "State Senator", "Mayor", etc.
  level TEXT NOT NULL CHECK (level IN ('federal', 'state', 'local')),

  -- Geographic Coverage
  state TEXT, -- 2-letter state code (NULL for President/VP)
  district TEXT, -- Congressional district number, state district, etc.
  jurisdiction TEXT, -- City name, county name for local officials

  -- Political Info
  party TEXT, -- "Democratic", "Republican", "Independent", etc.

  -- Contact Info
  phone TEXT,
  email TEXT,
  website TEXT,

  -- Social Media
  twitter TEXT,
  facebook TEXT,
  youtube TEXT,

  -- Office Details
  office_address TEXT,
  term_start DATE,
  term_end DATE,

  -- Photo
  photo_url TEXT,

  -- Metadata
  source TEXT, -- "manual", "openstates", "google_divisions"
  external_id TEXT, -- ID from external source
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Indexes for fast lookups
CREATE INDEX IF NOT EXISTS idx_reps_state ON representatives(state);
CREATE INDEX IF NOT EXISTS idx_reps_level ON representatives(level);
CREATE INDEX IF NOT EXISTS idx_reps_office ON representatives(office);
CREATE INDEX IF NOT EXISTS idx_reps_state_district ON representatives(state, district);
CREATE INDEX IF NOT EXISTS idx_reps_jurisdiction ON representatives(jurisdiction);

-- Composite index for common query pattern
CREATE INDEX IF NOT EXISTS idx_reps_lookup ON representatives(level, state, district);

COMMENT ON TABLE representatives IS 'Current elected officials at federal, state, and local levels';

-- ============================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================
ALTER TABLE representatives ENABLE ROW LEVEL SECURITY;

-- Public read access to representatives (all public data)
CREATE POLICY "Public read access to representatives"
  ON representatives
  FOR SELECT
  USING (true);

-- Only service role can modify
CREATE POLICY "Service role can manage representatives"
  ON representatives
  FOR ALL
  USING (auth.role() = 'service_role');

-- ============================================
-- HELPER FUNCTIONS
-- ============================================

-- Function to get representatives by state
CREATE OR REPLACE FUNCTION get_reps_by_state(state_code TEXT)
RETURNS TABLE (
  id UUID,
  name TEXT,
  office TEXT,
  level TEXT,
  party TEXT,
  phone TEXT,
  email TEXT,
  website TEXT
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    r.id,
    r.name,
    r.office,
    r.level,
    r.party,
    r.phone,
    r.email,
    r.website
  FROM representatives r
  WHERE r.state = state_code OR r.state IS NULL -- Include President/VP
  ORDER BY
    CASE r.level
      WHEN 'federal' THEN 1
      WHEN 'state' THEN 2
      WHEN 'local' THEN 3
    END,
    r.office;
END;
$$ LANGUAGE plpgsql;

-- Function to update timestamps
CREATE OR REPLACE FUNCTION update_representatives_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_representatives_timestamp
  BEFORE UPDATE ON representatives
  FOR EACH ROW
  EXECUTE FUNCTION update_representatives_timestamp();
