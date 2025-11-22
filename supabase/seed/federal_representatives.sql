-- Seed Federal Representatives
-- This seeds the President and Vice President
-- For full Congress data, see instructions at bottom of file

-- Clear existing federal reps (if re-seeding)
DELETE FROM representatives WHERE level = 'federal';

-- President (as of 2025)
INSERT INTO representatives (
  name, office, level, party, website, photo_url, source
) VALUES (
  'Joe Biden',
  'President of the United States',
  'federal',
  'Democratic',
  'https://www.whitehouse.gov',
  'https://www.whitehouse.gov/wp-content/uploads/2021/01/President-Official-Portrait.jpg',
  'manual'
);

-- Vice President
INSERT INTO representatives (
  name, office, level, party, website, source
) VALUES (
  'Kamala Harris',
  'Vice President of the United States',
  'federal',
  'Democratic',
  'https://www.whitehouse.gov/administration/vice-president-harris/',
  'manual'
);

-- TODO: Add all 100 Senators
-- Example Senators (add all 100):
/*
INSERT INTO representatives (
  name, office, level, state, party, website, phone, email, source
) VALUES
  ('Dianne Feinstein', 'U.S. Senator', 'federal', 'CA', 'Democratic', 'https://www.feinstein.senate.gov', '(202) 224-3841', NULL, 'manual'),
  ('Alex Padilla', 'U.S. Senator', 'federal', 'CA', 'Democratic', 'https://www.padilla.senate.gov', '(202) 224-3553', NULL, 'manual');
*/

-- TODO: Add all 435 House Representatives
-- Example House Rep:
/*
INSERT INTO representatives (
  name, office, level, state, district, party, website, phone, source
) VALUES (
  'Nancy Pelosi',
  'U.S. Representative',
  'federal',
  'CA',
  '11',
  'Democratic',
  'https://pelosi.house.gov',
  '(202) 225-4965',
  'manual'
);
*/

-- ============================================
-- HOW TO GET FULL CONGRESS DATA:
-- ============================================
--
-- Option 1: Use unitedstates/congress-legislators GitHub repo
-- https://github.com/unitedstates/congress-legislators
-- Download: legislators-current.yaml or legislators-current.json
-- Contains all current members with contact info
--
-- Option 2: Use ProPublica Congress API (bulk download)
-- Though their API shut down, the data dumps may still be available
--
-- Option 3: Scrape from official sources:
-- - Senate: https://www.senate.gov/senators/senators-contact.htm
-- - House: https://www.house.gov/representatives
--
-- Then transform to SQL INSERT statements matching the schema above
-- ============================================
