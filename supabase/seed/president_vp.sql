-- Add President and Vice President
-- These are not in the congress-legislators data since they're not legislators

-- First delete old President/VP
DELETE FROM representatives WHERE office IN ('President of the United States', 'Vice President of the United States');

INSERT INTO representatives (
  name, office, level, state, district, party,
  phone, website,
  photo_url, term_start, term_end, source, external_id
) VALUES
(
  'Donald J. Trump',
  'President of the United States',
  'federal',
  NULL,
  NULL,
  'Republican',
  '202-456-1414',
  'https://www.whitehouse.gov',
  'https://www.whitehouse.gov/wp-content/uploads/2025/01/president_official_portrait_2025.jpg',
  '2025-01-20',
  '2029-01-20',
  'manual',
  'potus-47'
),
(
  'JD Vance',
  'Vice President of the United States',
  'federal',
  NULL,
  NULL,
  'Republican',
  '202-456-1414',
  'https://www.whitehouse.gov',
  'https://www.whitehouse.gov/wp-content/uploads/2025/01/vice_president_official_portrait.jpg',
  '2025-01-20',
  '2029-01-20',
  'manual',
  'vpotus-50'
);
