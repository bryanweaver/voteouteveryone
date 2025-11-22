-- Generated Congress Data
-- Source: https://github.com/unitedstates/congress-legislators
-- Generated: 2025-11-14T14:50:58.605Z

-- Clear existing federal reps (except President/VP)
DELETE FROM representatives WHERE level = 'federal' AND state IS NOT NULL;

-- Insert Senators and Representatives
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Maria Cantwell',
    'U.S. Senator',
    'federal',
    'WA',
    NULL,
    'Democrat',
    '202-224-3441',
    'https://www.cantwell.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C000127.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'C000127'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Amy Klobuchar',
    'U.S. Senator',
    'federal',
    'MN',
    NULL,
    'Democrat',
    '202-224-3244',
    'https://www.klobuchar.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000367.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'K000367'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bernard Sanders',
    'U.S. Senator',
    'federal',
    'VT',
    NULL,
    'Independent',
    '202-224-5141',
    'https://www.sanders.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000033.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'S000033'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sheldon Whitehouse',
    'U.S. Senator',
    'federal',
    'RI',
    NULL,
    'Democrat',
    '202-224-2921',
    'https://www.whitehouse.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000802.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'W000802'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Barrasso',
    'U.S. Senator',
    'federal',
    'WY',
    NULL,
    'Republican',
    '202-224-6441',
    'https://www.barrasso.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001261.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'B001261'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Roger F. Wicker',
    'U.S. Senator',
    'federal',
    'MS',
    NULL,
    'Republican',
    '202-224-6253',
    'https://www.wicker.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000437.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'W000437'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Susan M. Collins',
    'U.S. Senator',
    'federal',
    'ME',
    NULL,
    'Republican',
    '202-224-2523',
    'https://www.collins.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001035.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001035'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Cornyn',
    'U.S. Senator',
    'federal',
    'TX',
    NULL,
    'Republican',
    '202-224-2934',
    'https://www.cornyn.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001056.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001056'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Richard J. Durbin',
    'U.S. Senator',
    'federal',
    'IL',
    NULL,
    'Democrat',
    '202-224-2152',
    'https://www.durbin.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000563.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000563'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lindsey Graham',
    'U.S. Senator',
    'federal',
    'SC',
    NULL,
    'Republican',
    '202-224-5972',
    'https://www.lgraham.senate.gov/public',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000359.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000359'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mitch McConnell',
    'U.S. Senator',
    'federal',
    'KY',
    NULL,
    'Republican',
    '202-224-2541',
    'https://www.mcconnell.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000355.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000355'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jeff Merkley',
    'U.S. Senator',
    'federal',
    'OR',
    NULL,
    'Democrat',
    '202-224-3753',
    'https://www.merkley.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001176.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001176'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jack Reed',
    'U.S. Senator',
    'federal',
    'RI',
    NULL,
    'Democrat',
    '202-224-4642',
    'https://www.reed.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000122.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000122'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James E. Risch',
    'U.S. Senator',
    'federal',
    'ID',
    NULL,
    'Republican',
    '202-224-2752',
    'https://www.risch.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000584.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000584'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jeanne Shaheen',
    'U.S. Senator',
    'federal',
    'NH',
    NULL,
    'Democrat',
    '202-224-2841',
    'https://www.shaheen.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001181.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001181'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark R. Warner',
    'U.S. Senator',
    'federal',
    'VA',
    NULL,
    'Democrat',
    '202-224-2023',
    'https://www.warner.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000805.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000805'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kirsten E. Gillibrand',
    'U.S. Senator',
    'federal',
    'NY',
    NULL,
    'Democrat',
    '202-224-4451',
    'https://www.gillibrand.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000555.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'G000555'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Christopher A. Coons',
    'U.S. Senator',
    'federal',
    'DE',
    NULL,
    'Democrat',
    '202-224-5042',
    'https://www.coons.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001088.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001088'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert B. Aderholt',
    'U.S. Representative',
    'federal',
    'AL',
    '4',
    'Republican',
    '202-225-4876',
    'https://aderholt.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000055.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000055'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tammy Baldwin',
    'U.S. Senator',
    'federal',
    'WI',
    NULL,
    'Democrat',
    '202-224-5653',
    'https://www.baldwin.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001230.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'B001230'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael F. Bennet',
    'U.S. Senator',
    'federal',
    'CO',
    NULL,
    'Democrat',
    '202-224-5852',
    'https://www.bennet.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001267.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'B001267'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gus M. Bilirakis',
    'U.S. Representative',
    'federal',
    'FL',
    '12',
    'Republican',
    '202-225-5755',
    'https://bilirakis.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001257.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001257'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sanford D. Bishop, Jr.',
    'U.S. Representative',
    'federal',
    'GA',
    '2',
    'Democrat',
    '202-225-3631',
    'https://bishop.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B000490.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B000490'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marsha Blackburn',
    'U.S. Senator',
    'federal',
    'TN',
    NULL,
    'Republican',
    '202-224-3344',
    'https://www.blackburn.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001243.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'B001243'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Richard Blumenthal',
    'U.S. Senator',
    'federal',
    'CT',
    NULL,
    'Democrat',
    '202-224-2823',
    'https://www.blumenthal.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001277.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'B001277'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Boozman',
    'U.S. Senator',
    'federal',
    'AR',
    NULL,
    'Republican',
    '202-224-4843',
    'https://www.boozman.senate.gov/public',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001236.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'B001236'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Vern Buchanan',
    'U.S. Representative',
    'federal',
    'FL',
    '16',
    'Republican',
    '202-225-5015',
    'https://buchanan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001260.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001260'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ken Calvert',
    'U.S. Representative',
    'federal',
    'CA',
    '41',
    'Republican',
    '202-225-1986',
    'https://calvert.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C000059.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C000059'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Shelley Moore Capito',
    'U.S. Senator',
    'federal',
    'WV',
    NULL,
    'Republican',
    '202-224-6472',
    'https://www.capito.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001047.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001047'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'André Carson',
    'U.S. Representative',
    'federal',
    'IN',
    '7',
    'Democrat',
    '202-225-4011',
    'https://carson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001072.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001072'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John R. Carter',
    'U.S. Representative',
    'federal',
    'TX',
    '31',
    'Republican',
    '202-225-3864',
    'https://carter.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001051.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001051'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bill Cassidy',
    'U.S. Senator',
    'federal',
    'LA',
    NULL,
    'Republican',
    '202-224-5824',
    'https://www.cassidy.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001075.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001075'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kathy Castor',
    'U.S. Representative',
    'federal',
    'FL',
    '14',
    'Democrat',
    '202-225-3376',
    'https://castor.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001066.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001066'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Judy Chu',
    'U.S. Representative',
    'federal',
    'CA',
    '28',
    'Democrat',
    '202-225-5464',
    'https://chu.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001080.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001080'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Yvette D. Clarke',
    'U.S. Representative',
    'federal',
    'NY',
    '9',
    'Democrat',
    '202-225-6231',
    'https://clarke.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001067.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001067'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Emanuel Cleaver',
    'U.S. Representative',
    'federal',
    'MO',
    '5',
    'Democrat',
    '202-225-4535',
    'https://cleaver.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001061.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001061'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James E. Clyburn',
    'U.S. Representative',
    'federal',
    'SC',
    '6',
    'Democrat',
    '202-225-3315',
    'https://clyburn.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C000537.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C000537'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Steve Cohen',
    'U.S. Representative',
    'federal',
    'TN',
    '9',
    'Democrat',
    '202-225-3265',
    'https://cohen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001068.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001068'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tom Cole',
    'U.S. Representative',
    'federal',
    'OK',
    '4',
    'Republican',
    '202-225-6165',
    'https://cole.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001053.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001053'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jim Costa',
    'U.S. Representative',
    'federal',
    'CA',
    '21',
    'Democrat',
    '202-225-3341',
    'https://costa.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001059.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001059'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joe Courtney',
    'U.S. Representative',
    'federal',
    'CT',
    '2',
    'Democrat',
    '202-225-2076',
    'https://courtney.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001069.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001069'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Crapo',
    'U.S. Senator',
    'federal',
    'ID',
    NULL,
    'Republican',
    '202-224-6142',
    'https://www.crapo.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C000880.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'C000880'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eric A. "Rick" Crawford',
    'U.S. Representative',
    'federal',
    'AR',
    '1',
    'Republican',
    '202-225-4076',
    'https://crawford.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001087.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001087'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Henry Cuellar',
    'U.S. Representative',
    'federal',
    'TX',
    '28',
    'Democrat',
    '202-225-1640',
    'https://cuellar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001063.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001063'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Danny K. Davis',
    'U.S. Representative',
    'federal',
    'IL',
    '7',
    'Democrat',
    '202-225-5006',
    'https://davis.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000096.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000096'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Diana DeGette',
    'U.S. Representative',
    'federal',
    'CO',
    '1',
    'Democrat',
    '202-225-4431',
    'https://degette.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000197.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000197'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rosa L. DeLauro',
    'U.S. Representative',
    'federal',
    'CT',
    '3',
    'Democrat',
    '202-225-3661',
    'https://delauro.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000216.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000216'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Scott DesJarlais',
    'U.S. Representative',
    'federal',
    'TN',
    '4',
    'Republican',
    '202-225-6831',
    'https://desjarlais.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000616.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000616'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mario Diaz-Balart',
    'U.S. Representative',
    'federal',
    'FL',
    '26',
    'Republican',
    '202-225-4211',
    'https://mariodiazbalart.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000600.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000600'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lloyd Doggett',
    'U.S. Representative',
    'federal',
    'TX',
    '37',
    'Democrat',
    '202-225-4865',
    'https://doggett.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000399.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000399'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Charles J. "Chuck" Fleischmann',
    'U.S. Representative',
    'federal',
    'TN',
    '3',
    'Republican',
    '202-225-3271',
    'https://fleischmann.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000459.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000459'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Virginia Foxx',
    'U.S. Representative',
    'federal',
    'NC',
    '5',
    'Republican',
    '202-225-2071',
    'https://foxx.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000450.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000450'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Garamendi',
    'U.S. Representative',
    'federal',
    'CA',
    '8',
    'Democrat',
    '202-225-1880',
    'https://garamendi.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000559.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000559'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Paul A. Gosar',
    'U.S. Representative',
    'federal',
    'AZ',
    '9',
    'Republican',
    '202-225-2315',
    'https://gosar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000565.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000565'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chuck Grassley',
    'U.S. Senator',
    'federal',
    'IA',
    NULL,
    'Republican',
    '202-224-3744',
    'https://www.grassley.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000386.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'G000386'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sam Graves',
    'U.S. Representative',
    'federal',
    'MO',
    '6',
    'Republican',
    '202-225-7041',
    'https://graves.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000546.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000546'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Al Green',
    'U.S. Representative',
    'federal',
    'TX',
    '9',
    'Democrat',
    '202-225-7508',
    'https://algreen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000553.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000553'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'H. Morgan Griffith',
    'U.S. Representative',
    'federal',
    'VA',
    '9',
    'Republican',
    '202-225-3861',
    'https://morgangriffith.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000568.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000568'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brett Guthrie',
    'U.S. Representative',
    'federal',
    'KY',
    '2',
    'Republican',
    '202-225-3501',
    'https://guthrie.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000558.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000558'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andy Harris',
    'U.S. Representative',
    'federal',
    'MD',
    '1',
    'Republican',
    '202-225-5311',
    'https://harris.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001052.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001052'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Martin Heinrich',
    'U.S. Senator',
    'federal',
    'NM',
    NULL,
    'Democrat',
    '202-224-5521',
    'https://www.heinrich.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001046.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'H001046'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James A. Himes',
    'U.S. Representative',
    'federal',
    'CT',
    '4',
    'Democrat',
    '202-225-5541',
    'https://himes.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001047.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001047'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mazie K. Hirono',
    'U.S. Senator',
    'federal',
    'HI',
    NULL,
    'Democrat',
    '202-224-6361',
    'https://www.hirono.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001042.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'H001042'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Hoeven',
    'U.S. Senator',
    'federal',
    'ND',
    NULL,
    'Republican',
    '202-224-2551',
    'https://www.hoeven.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001061.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'H001061'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Steny H. Hoyer',
    'U.S. Representative',
    'federal',
    'MD',
    '5',
    'Democrat',
    '202-225-4131',
    'https://hoyer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H000874.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H000874'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bill Huizenga',
    'U.S. Representative',
    'federal',
    'MI',
    '4',
    'Republican',
    '202-225-4401',
    'https://huizenga.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001058.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001058'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Henry C. "Hank" Johnson, Jr.',
    'U.S. Representative',
    'federal',
    'GA',
    '4',
    'Democrat',
    '202-225-1605',
    'https://hankjohnson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000288.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000288'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ron Johnson',
    'U.S. Senator',
    'federal',
    'WI',
    NULL,
    'Republican',
    '202-224-5323',
    'https://www.ronjohnson.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000293.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'J000293'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jim Jordan',
    'U.S. Representative',
    'federal',
    'OH',
    '4',
    'Republican',
    '202-225-2676',
    'https://jordan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000289.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000289'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marcy Kaptur',
    'U.S. Representative',
    'federal',
    'OH',
    '9',
    'Democrat',
    '202-225-4146',
    'https://kaptur.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000009.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000009'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'William R. Keating',
    'U.S. Representative',
    'federal',
    'MA',
    '9',
    'Democrat',
    '202-225-3111',
    'https://keating.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000375.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000375'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Kelly',
    'U.S. Representative',
    'federal',
    'PA',
    '16',
    'Republican',
    '202-225-5406',
    'https://kelly.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000376.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000376'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James Lankford',
    'U.S. Senator',
    'federal',
    'OK',
    NULL,
    'Republican',
    '202-224-5754',
    'https://www.lankford.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000575.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'L000575'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rick Larsen',
    'U.S. Representative',
    'federal',
    'WA',
    '2',
    'Democrat',
    '202-225-2605',
    'https://larsen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000560.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000560'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John B. Larson',
    'U.S. Representative',
    'federal',
    'CT',
    '1',
    'Democrat',
    '202-225-2265',
    'https://larson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000557.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000557'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert E. Latta',
    'U.S. Representative',
    'federal',
    'OH',
    '5',
    'Republican',
    '202-225-6405',
    'https://latta.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000566.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000566'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Lee',
    'U.S. Senator',
    'federal',
    'UT',
    NULL,
    'Republican',
    '202-224-5444',
    'https://www.lee.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000577.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'L000577'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Zoe Lofgren',
    'U.S. Representative',
    'federal',
    'CA',
    '18',
    'Democrat',
    '202-225-3072',
    'https://lofgren.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000397.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000397'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Frank D. Lucas',
    'U.S. Representative',
    'federal',
    'OK',
    '3',
    'Republican',
    '202-225-5565',
    'https://lucas.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000491.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000491'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ben Ray Luján',
    'U.S. Senator',
    'federal',
    'NM',
    NULL,
    'Democrat',
    '202-224-6621',
    'https://www.lujan.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000570.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000570'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Stephen F. Lynch',
    'U.S. Representative',
    'federal',
    'MA',
    '8',
    'Democrat',
    '202-225-8273',
    'https://lynch.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000562.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000562'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Edward J. Markey',
    'U.S. Senator',
    'federal',
    'MA',
    NULL,
    'Democrat',
    '202-224-2742',
    'https://www.markey.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000133.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000133'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Doris O. Matsui',
    'U.S. Representative',
    'federal',
    'CA',
    '7',
    'Democrat',
    '202-225-7163',
    'https://matsui.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001163.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001163'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael T. McCaul',
    'U.S. Representative',
    'federal',
    'TX',
    '10',
    'Republican',
    '202-225-2401',
    'https://mccaul.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001157.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001157'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tom McClintock',
    'U.S. Representative',
    'federal',
    'CA',
    '5',
    'Republican',
    '202-225-2511',
    'https://mcclintock.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001177.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001177'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Betty McCollum',
    'U.S. Representative',
    'federal',
    'MN',
    '4',
    'Democrat',
    '202-225-6631',
    'https://mccollum.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001143.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001143'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James P. McGovern',
    'U.S. Representative',
    'federal',
    'MA',
    '2',
    'Democrat',
    '202-225-6101',
    'https://mcgovern.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000312.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000312'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gregory W. Meeks',
    'U.S. Representative',
    'federal',
    'NY',
    '5',
    'Democrat',
    '202-225-3461',
    'https://meeks.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001137.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001137'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gwen Moore',
    'U.S. Representative',
    'federal',
    'WI',
    '4',
    'Democrat',
    '202-225-4572',
    'https://gwenmoore.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001160.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001160'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jerry Moran',
    'U.S. Senator',
    'federal',
    'KS',
    NULL,
    'Republican',
    '202-224-6521',
    'https://www.moran.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000934.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'M000934'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lisa Murkowski',
    'U.S. Senator',
    'federal',
    'AK',
    NULL,
    'Republican',
    '202-224-6665',
    'https://www.murkowski.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001153.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'M001153'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Christopher Murphy',
    'U.S. Senator',
    'federal',
    'CT',
    NULL,
    'Democrat',
    '202-224-4041',
    'https://www.murphy.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001169.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'M001169'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Patty Murray',
    'U.S. Senator',
    'federal',
    'WA',
    NULL,
    'Democrat',
    '202-224-2621',
    'https://www.murray.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001111.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'M001111'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jerrold Nadler',
    'U.S. Representative',
    'federal',
    'NY',
    '12',
    'Democrat',
    '202-225-5635',
    'https://nadler.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000002.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000002'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Richard E. Neal',
    'U.S. Representative',
    'federal',
    'MA',
    '1',
    'Democrat',
    '202-225-5601',
    'https://neal.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000015.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000015'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eleanor Holmes Norton',
    'U.S. Representative',
    'federal',
    'DC',
    '0',
    'Democrat',
    '202-225-8050',
    'https://norton.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000147.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000147'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Frank Pallone, Jr.',
    'U.S. Representative',
    'federal',
    'NJ',
    '6',
    'Democrat',
    '202-225-4671',
    'https://pallone.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000034.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000034'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rand Paul',
    'U.S. Senator',
    'federal',
    'KY',
    NULL,
    'Republican',
    '202-224-4343',
    'https://www.paul.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000603.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'P000603'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nancy Pelosi',
    'U.S. Representative',
    'federal',
    'CA',
    '11',
    'Democrat',
    '202-225-4965',
    'https://pelosi.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000197.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000197'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gary C. Peters',
    'U.S. Senator',
    'federal',
    'MI',
    NULL,
    'Democrat',
    '202-224-6221',
    'https://www.peters.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000595.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000595'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chellie Pingree',
    'U.S. Representative',
    'federal',
    'ME',
    '1',
    'Democrat',
    '202-225-6116',
    'https://pingree.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000597.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000597'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Quigley',
    'U.S. Representative',
    'federal',
    'IL',
    '5',
    'Democrat',
    '202-225-4061',
    'https://quigley.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/Q000023.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'Q000023'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Harold Rogers',
    'U.S. Representative',
    'federal',
    'KY',
    '5',
    'Republican',
    '202-225-4601',
    'https://halrogers.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000395.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000395'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Rogers',
    'U.S. Representative',
    'federal',
    'AL',
    '3',
    'Republican',
    '202-225-3261',
    'https://mikerogers.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000575.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000575'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Steve Scalise',
    'U.S. Representative',
    'federal',
    'LA',
    '1',
    'Republican',
    '202-225-3015',
    'https://scalise.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001176.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001176'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Janice D. Schakowsky',
    'U.S. Representative',
    'federal',
    'IL',
    '9',
    'Democrat',
    '202-225-2111',
    'https://schakowsky.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001145.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001145'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Adam B. Schiff',
    'U.S. Senator',
    'federal',
    'CA',
    NULL,
    'Democrat',
    '202-224-3841',
    'https://www.schiff.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001150.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'S001150'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Charles E. Schumer',
    'U.S. Senator',
    'federal',
    'NY',
    NULL,
    'Democrat',
    '202-224-6542',
    'https://www.schumer.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000148.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'S000148'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David Schweikert',
    'U.S. Representative',
    'federal',
    'AZ',
    '1',
    'Republican',
    '202-225-2190',
    'https://schweikert.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001183.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001183'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Austin Scott',
    'U.S. Representative',
    'federal',
    'GA',
    '8',
    'Republican',
    '202-225-6531',
    'https://austinscott.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001189.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001189'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David Scott',
    'U.S. Representative',
    'federal',
    'GA',
    '13',
    'Democrat',
    '202-225-2939',
    'https://davidscott.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001157.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001157'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert C. "Bobby" Scott',
    'U.S. Representative',
    'federal',
    'VA',
    '3',
    'Democrat',
    '202-225-8351',
    'https://bobbyscott.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000185.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000185'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tim Scott',
    'U.S. Senator',
    'federal',
    'SC',
    NULL,
    'Republican',
    '202-224-6121',
    'https://www.scott.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001184.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'S001184'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Terri A. Sewell',
    'U.S. Representative',
    'federal',
    'AL',
    '7',
    'Democrat',
    '202-225-2665',
    'https://sewell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001185.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001185'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brad Sherman',
    'U.S. Representative',
    'federal',
    'CA',
    '32',
    'Democrat',
    '202-225-5911',
    'https://sherman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000344.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000344'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael K. Simpson',
    'U.S. Representative',
    'federal',
    'ID',
    '2',
    'Republican',
    '202-225-5531',
    'https://simpson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001148.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001148'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Adam Smith',
    'U.S. Representative',
    'federal',
    'WA',
    '9',
    'Democrat',
    '202-225-8901',
    'https://adamsmith.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000510.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000510'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Adrian Smith',
    'U.S. Representative',
    'federal',
    'NE',
    '3',
    'Republican',
    '202-225-6435',
    'https://adriansmith.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001172.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001172'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Christopher H. Smith',
    'U.S. Representative',
    'federal',
    'NJ',
    '4',
    'Republican',
    '202-225-3765',
    'https://chrissmith.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000522.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000522'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Linda T. Sánchez',
    'U.S. Representative',
    'federal',
    'CA',
    '38',
    'Democrat',
    '202-225-6676',
    'https://lindasanchez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001156.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001156'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bennie G. Thompson',
    'U.S. Representative',
    'federal',
    'MS',
    '2',
    'Democrat',
    '202-225-5876',
    'https://benniethompson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000193.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000193'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Thompson',
    'U.S. Representative',
    'federal',
    'CA',
    '4',
    'Democrat',
    '202-225-3311',
    'https://mikethompson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000460.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000460'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Glenn Thompson',
    'U.S. Representative',
    'federal',
    'PA',
    '15',
    'Republican',
    '202-225-5121',
    'https://thompson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000467.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000467'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Thune',
    'U.S. Senator',
    'federal',
    'SD',
    NULL,
    'Republican',
    '202-224-2321',
    'https://www.thune.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000250.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'T000250'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Paul Tonko',
    'U.S. Representative',
    'federal',
    'NY',
    '20',
    'Democrat',
    '202-225-5076',
    'https://tonko.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000469.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000469'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael R. Turner',
    'U.S. Representative',
    'federal',
    'OH',
    '10',
    'Republican',
    '202-225-6465',
    'https://turner.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000463.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000463'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chris Van Hollen',
    'U.S. Senator',
    'federal',
    'MD',
    NULL,
    'Democrat',
    '202-224-4654',
    'https://www.vanhollen.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000128.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'V000128'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nydia M. Velázquez',
    'U.S. Representative',
    'federal',
    'NY',
    '7',
    'Democrat',
    '202-225-2361',
    'https://velazquez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000081.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000081'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tim Walberg',
    'U.S. Representative',
    'federal',
    'MI',
    '5',
    'Republican',
    '202-225-6276',
    'https://walberg.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000798.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000798'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Debbie Wasserman Schultz',
    'U.S. Representative',
    'federal',
    'FL',
    '25',
    'Democrat',
    '202-225-7931',
    'https://wassermanschultz.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000797.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000797'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Maxine Waters',
    'U.S. Representative',
    'federal',
    'CA',
    '43',
    'Democrat',
    '202-225-2201',
    'https://waters.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000187.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000187'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Daniel Webster',
    'U.S. Representative',
    'federal',
    'FL',
    '11',
    'Republican',
    '202-225-1002',
    'https://webster.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000806.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000806'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Peter Welch',
    'U.S. Senator',
    'federal',
    'VT',
    NULL,
    'Democrat',
    '202-224-4242',
    'https://www.welch.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000800.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'W000800'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joe Wilson',
    'U.S. Representative',
    'federal',
    'SC',
    '2',
    'Republican',
    '202-225-2452',
    'https://joewilson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000795.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000795'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Frederica S. Wilson',
    'U.S. Representative',
    'federal',
    'FL',
    '24',
    'Democrat',
    '202-225-4506',
    'https://wilson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000808.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000808'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert J. Wittman',
    'U.S. Representative',
    'federal',
    'VA',
    '1',
    'Republican',
    '202-225-4261',
    'https://wittman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000804.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000804'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Steve Womack',
    'U.S. Representative',
    'federal',
    'AR',
    '3',
    'Republican',
    '202-225-4301',
    'https://womack.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000809.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000809'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ron Wyden',
    'U.S. Senator',
    'federal',
    'OR',
    NULL,
    'Democrat',
    '202-224-5244',
    'https://www.wyden.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000779.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'W000779'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Todd Young',
    'U.S. Senator',
    'federal',
    'IN',
    NULL,
    'Republican',
    '202-224-5623',
    'https://www.young.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/Y000064.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'Y000064'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark E. Amodei',
    'U.S. Representative',
    'federal',
    'NV',
    '2',
    'Republican',
    '202-225-6155',
    'https://amodei.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000369.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000369'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Suzanne Bonamici',
    'U.S. Representative',
    'federal',
    'OR',
    '1',
    'Democrat',
    '202-225-0855',
    'https://bonamici.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001278.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001278'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Suzan K. DelBene',
    'U.S. Representative',
    'federal',
    'WA',
    '1',
    'Democrat',
    '202-225-6311',
    'https://delbene.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000617.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000617'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Thomas Massie',
    'U.S. Representative',
    'federal',
    'KY',
    '4',
    'Republican',
    '202-225-3465',
    'https://massie.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001184.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001184'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brian Schatz',
    'U.S. Senator',
    'federal',
    'HI',
    NULL,
    'Democrat',
    '202-224-3934',
    'https://www.schatz.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001194.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'S001194'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bill Foster',
    'U.S. Representative',
    'federal',
    'IL',
    '11',
    'Democrat',
    '202-225-3515',
    'https://foster.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000454.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000454'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dina Titus',
    'U.S. Representative',
    'federal',
    'NV',
    '1',
    'Democrat',
    '202-225-5965',
    'https://titus.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000468.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000468'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tom Cotton',
    'U.S. Senator',
    'federal',
    'AR',
    NULL,
    'Republican',
    '202-224-2353',
    'https://www.cotton.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001095.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001095'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Doug LaMalfa',
    'U.S. Representative',
    'federal',
    'CA',
    '1',
    'Republican',
    '202-225-3076',
    'https://lamalfa.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000578.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000578'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jared Huffman',
    'U.S. Representative',
    'federal',
    'CA',
    '2',
    'Democrat',
    '202-225-5161',
    'https://huffman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001068.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001068'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ami Bera',
    'U.S. Representative',
    'federal',
    'CA',
    '6',
    'Democrat',
    '202-225-5716',
    'https://bera.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001287.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001287'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eric Swalwell',
    'U.S. Representative',
    'federal',
    'CA',
    '14',
    'Democrat',
    '202-225-5065',
    'https://swalwell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001193.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001193'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Julia Brownley',
    'U.S. Representative',
    'federal',
    'CA',
    '26',
    'Democrat',
    '202-225-5811',
    'https://juliabrownley.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001285.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001285'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Raul Ruiz',
    'U.S. Representative',
    'federal',
    'CA',
    '25',
    'Democrat',
    '202-225-5330',
    'https://ruiz.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000599.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000599'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark Takano',
    'U.S. Representative',
    'federal',
    'CA',
    '39',
    'Democrat',
    '202-225-2305',
    'https://takano.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000472.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000472'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Juan Vargas',
    'U.S. Representative',
    'federal',
    'CA',
    '52',
    'Democrat',
    '202-225-8045',
    'https://vargas.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000130.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000130'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Scott H. Peters',
    'U.S. Representative',
    'federal',
    'CA',
    '50',
    'Democrat',
    '202-225-0508',
    'https://scottpeters.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000608.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000608'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lois Frankel',
    'U.S. Representative',
    'federal',
    'FL',
    '22',
    'Democrat',
    '202-225-9890',
    'https://frankel.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000462.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000462'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tammy Duckworth',
    'U.S. Senator',
    'federal',
    'IL',
    NULL,
    'Democrat',
    '202-224-2854',
    'https://www.duckworth.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000622.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'D000622'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andy Barr',
    'U.S. Representative',
    'federal',
    'KY',
    '6',
    'Republican',
    '202-225-4706',
    'https://barr.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001282.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001282'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Elizabeth Warren',
    'U.S. Senator',
    'federal',
    'MA',
    NULL,
    'Democrat',
    '202-224-4543',
    'https://www.warren.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000817.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'W000817'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Angus S. King, Jr.',
    'U.S. Senator',
    'federal',
    'ME',
    NULL,
    'Independent',
    '202-224-5344',
    'https://www.king.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000383.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'K000383'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ann Wagner',
    'U.S. Representative',
    'federal',
    'MO',
    '2',
    'Republican',
    '202-225-1621',
    'https://wagner.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000812.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000812'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Steve Daines',
    'U.S. Senator',
    'federal',
    'MT',
    NULL,
    'Republican',
    '202-224-2651',
    'https://www.daines.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000618.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000618'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Richard Hudson',
    'U.S. Representative',
    'federal',
    'NC',
    '9',
    'Republican',
    '202-225-3715',
    'https://hudson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001067.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001067'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kevin Cramer',
    'U.S. Senator',
    'federal',
    'ND',
    NULL,
    'Republican',
    '202-224-2043',
    'https://www.cramer.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001096.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'C001096'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Deb Fischer',
    'U.S. Senator',
    'federal',
    'NE',
    NULL,
    'Republican',
    '202-224-6551',
    'https://www.fischer.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000463.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'F000463'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Grace Meng',
    'U.S. Representative',
    'federal',
    'NY',
    '6',
    'Democrat',
    '202-225-2601',
    'https://meng.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001188.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001188'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Hakeem S. Jeffries',
    'U.S. Representative',
    'federal',
    'NY',
    '8',
    'Democrat',
    '202-225-5936',
    'https://jeffries.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000294.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000294'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joyce Beatty',
    'U.S. Representative',
    'federal',
    'OH',
    '3',
    'Democrat',
    '202-225-4324',
    'https://beatty.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001281.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001281'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David P. Joyce',
    'U.S. Representative',
    'federal',
    'OH',
    '14',
    'Republican',
    '202-225-5731',
    'https://joyce.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000295.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000295'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Markwayne Mullin',
    'U.S. Senator',
    'federal',
    'OK',
    NULL,
    'Republican',
    '202-224-4721',
    'https://www.mullin.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001190.jpg',
    '2023-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001190'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Scott Perry',
    'U.S. Representative',
    'federal',
    'PA',
    '10',
    'Republican',
    '202-225-5836',
    'https://perry.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000605.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000605'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ted Cruz',
    'U.S. Senator',
    'federal',
    'TX',
    NULL,
    'Republican',
    '202-224-5922',
    'https://www.cruz.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001098.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'C001098'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Randy K. Weber, Sr.',
    'U.S. Representative',
    'federal',
    'TX',
    '14',
    'Republican',
    '202-225-2831',
    'https://weber.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000814.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000814'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joaquin Castro',
    'U.S. Representative',
    'federal',
    'TX',
    '20',
    'Democrat',
    '202-225-3236',
    'https://castro.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001091.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001091'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Roger Williams',
    'U.S. Representative',
    'federal',
    'TX',
    '25',
    'Republican',
    '202-225-9896',
    'https://williams.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000816.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000816'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marc A. Veasey',
    'U.S. Representative',
    'federal',
    'TX',
    '33',
    'Democrat',
    '202-225-9897',
    'https://veasey.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000131.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000131'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tim Kaine',
    'U.S. Senator',
    'federal',
    'VA',
    NULL,
    'Democrat',
    '202-224-4024',
    'https://www.kaine.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000384.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'K000384'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark Pocan',
    'U.S. Representative',
    'federal',
    'WI',
    '2',
    'Democrat',
    '202-225-2906',
    'https://pocan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000607.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000607'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robin L. Kelly',
    'U.S. Representative',
    'federal',
    'IL',
    '2',
    'Democrat',
    '202-225-0773',
    'https://robinkelly.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000385.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000385'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jason Smith',
    'U.S. Representative',
    'federal',
    'MO',
    '8',
    'Republican',
    '202-225-4404',
    'https://jasonsmith.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001195.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001195'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Cory A. Booker',
    'U.S. Senator',
    'federal',
    'NJ',
    NULL,
    'Democrat',
    '202-224-3224',
    'https://www.booker.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001288.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001288'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Katherine M. Clark',
    'U.S. Representative',
    'federal',
    'MA',
    '5',
    'Democrat',
    '202-225-2836',
    'https://katherineclark.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001101.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001101'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Donald Norcross',
    'U.S. Representative',
    'federal',
    'NJ',
    '1',
    'Democrat',
    '202-225-6501',
    'https://norcross.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000188.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000188'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Alma S. Adams',
    'U.S. Representative',
    'federal',
    'NC',
    '12',
    'Democrat',
    '202-225-1510',
    'https://adams.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000370.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000370'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gary J. Palmer',
    'U.S. Representative',
    'federal',
    'AL',
    '6',
    'Republican',
    '202-225-4921',
    'https://palmer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000609.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000609'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'J. French Hill',
    'U.S. Representative',
    'federal',
    'AR',
    '2',
    'Republican',
    '202-225-2506',
    'https://hill.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001072.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001072'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bruce Westerman',
    'U.S. Representative',
    'federal',
    'AR',
    '4',
    'Republican',
    '202-225-3772',
    'https://westerman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000821.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000821'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ruben Gallego',
    'U.S. Senator',
    'federal',
    'AZ',
    NULL,
    'Democrat',
    '202-224-4521',
    'https://www.gallego.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000574.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'G000574'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark DeSaulnier',
    'U.S. Representative',
    'federal',
    'CA',
    '10',
    'Democrat',
    '202-225-2095',
    'https://desaulnier.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000623.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000623'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pete Aguilar',
    'U.S. Representative',
    'federal',
    'CA',
    '33',
    'Democrat',
    '202-225-3201',
    'https://aguilar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000371.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000371'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ted Lieu',
    'U.S. Representative',
    'federal',
    'CA',
    '36',
    'Democrat',
    '202-225-3976',
    'https://lieu.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000582.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000582'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Norma J. Torres',
    'U.S. Representative',
    'federal',
    'CA',
    '35',
    'Democrat',
    '202-225-6161',
    'https://torres.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000474.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000474'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Earl L. "Buddy" Carter',
    'U.S. Representative',
    'federal',
    'GA',
    '1',
    'Republican',
    '202-225-5831',
    'https://buddycarter.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001103.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001103'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Barry Loudermilk',
    'U.S. Representative',
    'federal',
    'GA',
    '11',
    'Republican',
    '202-225-2931',
    'https://loudermilk.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000583.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000583'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rick W. Allen',
    'U.S. Representative',
    'federal',
    'GA',
    '12',
    'Republican',
    '202-225-2823',
    'https://allen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000372.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000372'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Bost',
    'U.S. Representative',
    'federal',
    'IL',
    '12',
    'Republican',
    '202-225-5661',
    'https://bost.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001295.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001295'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Seth Moulton',
    'U.S. Representative',
    'federal',
    'MA',
    '6',
    'Democrat',
    '202-225-8020',
    'https://moulton.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001196.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001196'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John R. Moolenaar',
    'U.S. Representative',
    'federal',
    'MI',
    '2',
    'Republican',
    '202-225-3561',
    'https://moolenaar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001194.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001194'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Debbie Dingell',
    'U.S. Representative',
    'federal',
    'MI',
    '6',
    'Democrat',
    '202-225-4071',
    'https://debbiedingell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000624.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000624'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tom Emmer',
    'U.S. Representative',
    'federal',
    'MN',
    '6',
    'Republican',
    '202-225-2331',
    'https://emmer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000294.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000294'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David Rouzer',
    'U.S. Representative',
    'federal',
    'NC',
    '7',
    'Republican',
    '202-225-2731',
    'https://rouzer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000603.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000603'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bonnie Watson Coleman',
    'U.S. Representative',
    'federal',
    'NJ',
    '12',
    'Democrat',
    '202-225-5801',
    'https://watsoncoleman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000822.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000822'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Elise M. Stefanik',
    'U.S. Representative',
    'federal',
    'NY',
    '21',
    'Republican',
    '202-225-4611',
    'https://stefanik.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001196.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001196'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brendan F. Boyle',
    'U.S. Representative',
    'federal',
    'PA',
    '2',
    'Democrat',
    '202-225-6111',
    'https://boyle.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001296.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001296'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brian Babin',
    'U.S. Representative',
    'federal',
    'TX',
    '36',
    'Republican',
    '202-225-1555',
    'https://babin.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001291.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001291'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Donald S. Beyer, Jr.',
    'U.S. Representative',
    'federal',
    'VA',
    '8',
    'Democrat',
    '202-225-4376',
    'https://beyer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001292.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001292'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Stacey E. Plaskett',
    'U.S. Representative',
    'federal',
    'VI',
    '0',
    'Democrat',
    '202-225-1790',
    'https://plaskett.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000610.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000610'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dan Newhouse',
    'U.S. Representative',
    'federal',
    'WA',
    '4',
    'Republican',
    '202-225-5816',
    'https://newhouse.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000189.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000189'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Glenn Grothman',
    'U.S. Representative',
    'federal',
    'WI',
    '6',
    'Republican',
    '202-225-2476',
    'https://grothman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000576.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000576'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Aumua Amata Coleman Radewagen',
    'U.S. Representative',
    'federal',
    'AS',
    '0',
    'Republican',
    '202-225-8577',
    'https://radewagen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000600.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000600'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dan Sullivan',
    'U.S. Senator',
    'federal',
    'AK',
    NULL,
    'Republican',
    '202-224-3004',
    'https://www.sullivan.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001198.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001198'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joni Ernst',
    'U.S. Senator',
    'federal',
    'IA',
    NULL,
    'Republican',
    '202-224-3254',
    'https://www.ernst.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000295.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000295'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Thom Tillis',
    'U.S. Senator',
    'federal',
    'NC',
    NULL,
    'Republican',
    '202-224-6342',
    'https://www.tillis.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000476.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000476'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Rounds',
    'U.S. Senator',
    'federal',
    'SD',
    NULL,
    'Republican',
    '202-224-5842',
    'https://www.rounds.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000605.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000605'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Trent Kelly',
    'U.S. Representative',
    'federal',
    'MS',
    '1',
    'Republican',
    '202-225-4306',
    'https://trentkelly.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000388.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000388'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Darin LaHood',
    'U.S. Representative',
    'federal',
    'IL',
    '16',
    'Republican',
    '202-225-6201',
    'https://lahood.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000585.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000585'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Warren Davidson',
    'U.S. Representative',
    'federal',
    'OH',
    '8',
    'Republican',
    '202-225-6205',
    'https://davidson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000626.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000626'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James Comer',
    'U.S. Representative',
    'federal',
    'KY',
    '1',
    'Republican',
    '202-225-3115',
    'https://comer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001108.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001108'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dwight Evans',
    'U.S. Representative',
    'federal',
    'PA',
    '3',
    'Democrat',
    '202-225-4001',
    'https://evans.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000296.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000296'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Kennedy',
    'U.S. Senator',
    'federal',
    'LA',
    NULL,
    'Republican',
    '202-224-4623',
    'https://www.kennedy.senate.gov/public',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000393.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'K000393'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Margaret Wood Hassan',
    'U.S. Senator',
    'federal',
    'NH',
    NULL,
    'Democrat',
    '202-224-3324',
    'https://www.hassan.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001076.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'H001076'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Catherine Cortez Masto',
    'U.S. Senator',
    'federal',
    'NV',
    NULL,
    'Democrat',
    '202-224-3542',
    'https://www.cortezmasto.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001113.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'C001113'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bradley Scott Schneider',
    'U.S. Representative',
    'federal',
    'IL',
    '10',
    'Democrat',
    '202-225-4835',
    'https://schneider.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001190.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001190'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andy Biggs',
    'U.S. Representative',
    'federal',
    'AZ',
    '5',
    'Republican',
    '202-225-2635',
    'https://biggs.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001302.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001302'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ro Khanna',
    'U.S. Representative',
    'federal',
    'CA',
    '17',
    'Democrat',
    '202-225-2631',
    'https://khanna.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000389.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000389'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jimmy Panetta',
    'U.S. Representative',
    'federal',
    'CA',
    '19',
    'Democrat',
    '202-225-2861',
    'https://panetta.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000613.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000613'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Salud O. Carbajal',
    'U.S. Representative',
    'federal',
    'CA',
    '24',
    'Democrat',
    '202-225-3601',
    'https://carbajal.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001112.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001112'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nanette Diaz Barragán',
    'U.S. Representative',
    'federal',
    'CA',
    '44',
    'Democrat',
    '202-225-8220',
    'https://barragan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001300.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001300'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'J. Luis Correa',
    'U.S. Representative',
    'federal',
    'CA',
    '46',
    'Democrat',
    '202-225-2965',
    'https://correa.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001110.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001110'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lisa Blunt Rochester',
    'U.S. Senator',
    'federal',
    'DE',
    NULL,
    'Democrat',
    '202-224-2441',
    'https://www.bluntrochester.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001303.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'B001303'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Neal P. Dunn',
    'U.S. Representative',
    'federal',
    'FL',
    '2',
    'Republican',
    '202-225-5235',
    'https://dunn.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000628.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000628'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John H. Rutherford',
    'U.S. Representative',
    'federal',
    'FL',
    '5',
    'Republican',
    '202-225-2501',
    'https://rutherford.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000609.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000609'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Darren Soto',
    'U.S. Representative',
    'federal',
    'FL',
    '9',
    'Democrat',
    '202-225-9889',
    'https://soto.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001200.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001200'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brian J. Mast',
    'U.S. Representative',
    'federal',
    'FL',
    '21',
    'Republican',
    '202-225-3026',
    'https://mast.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001199.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001199'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Raja Krishnamoorthi',
    'U.S. Representative',
    'federal',
    'IL',
    '8',
    'Democrat',
    '202-225-3711',
    'https://krishnamoorthi.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000391.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000391'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jim Banks',
    'U.S. Senator',
    'federal',
    'IN',
    NULL,
    'Republican',
    '202-224-4814',
    'https://www.banks.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001299.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'B001299'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Roger Marshall',
    'U.S. Senator',
    'federal',
    'KS',
    NULL,
    'Republican',
    '202-224-4774',
    'https://www.marshall.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001198.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001198'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Clay Higgins',
    'U.S. Representative',
    'federal',
    'LA',
    '3',
    'Republican',
    '202-225-2031',
    'https://clayhiggins.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001077.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001077'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Johnson',
    'U.S. Representative',
    'federal',
    'LA',
    '4',
    'Republican',
    '202-225-2777',
    'https://mikejohnson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000299.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000299'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jamie Raskin',
    'U.S. Representative',
    'federal',
    'MD',
    '8',
    'Democrat',
    '202-225-5341',
    'https://raskin.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000606.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000606'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jack Bergman',
    'U.S. Representative',
    'federal',
    'MI',
    '1',
    'Republican',
    '202-225-4735',
    'https://bergman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001301.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001301'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ted Budd',
    'U.S. Senator',
    'federal',
    'NC',
    NULL,
    'Republican',
    '202-224-3154',
    'https://www.budd.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001305.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'B001305'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Don Bacon',
    'U.S. Representative',
    'federal',
    'NE',
    '2',
    'Republican',
    '202-225-4155',
    'https://bacon.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001298.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001298'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Josh Gottheimer',
    'U.S. Representative',
    'federal',
    'NJ',
    '5',
    'Democrat',
    '202-225-4465',
    'https://gottheimer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000583.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000583'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jacky Rosen',
    'U.S. Senator',
    'federal',
    'NV',
    NULL,
    'Democrat',
    '202-224-6244',
    'https://www.rosen.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000608.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'R000608'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Adriano Espaillat',
    'U.S. Representative',
    'federal',
    'NY',
    '13',
    'Democrat',
    '202-225-4365',
    'https://espaillat.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000297.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000297'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brian K. Fitzpatrick',
    'U.S. Representative',
    'federal',
    'PA',
    '1',
    'Republican',
    '202-225-4276',
    'https://fitzpatrick.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000466.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000466'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lloyd Smucker',
    'U.S. Representative',
    'federal',
    'PA',
    '11',
    'Republican',
    '202-225-2411',
    'https://smucker.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001199.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001199'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David Kustoff',
    'U.S. Representative',
    'federal',
    'TN',
    '8',
    'Republican',
    '202-225-4714',
    'https://kustoff.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000392.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000392'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Vicente Gonzalez',
    'U.S. Representative',
    'federal',
    'TX',
    '34',
    'Democrat',
    '202-225-2531',
    'https://gonzalez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000581.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000581'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jodey C. Arrington',
    'U.S. Representative',
    'federal',
    'TX',
    '19',
    'Republican',
    '202-225-4005',
    'https://arrington.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000375.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000375'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pramila Jayapal',
    'U.S. Representative',
    'federal',
    'WA',
    '7',
    'Democrat',
    '202-225-3106',
    'https://jayapal.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000298.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000298'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ron Estes',
    'U.S. Representative',
    'federal',
    'KS',
    '4',
    'Republican',
    '202-225-6216',
    'https://estes.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000298.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000298'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ralph Norman',
    'U.S. Representative',
    'federal',
    'SC',
    '5',
    'Republican',
    '202-225-5501',
    'https://norman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000190.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000190'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jimmy Gomez',
    'U.S. Representative',
    'federal',
    'CA',
    '34',
    'Democrat',
    '202-225-6235',
    'https://gomez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000585.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000585'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John R. Curtis',
    'U.S. Senator',
    'federal',
    'UT',
    NULL,
    'Republican',
    '202-224-5251',
    'https://www.curtis.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001114.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'C001114'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tina Smith',
    'U.S. Senator',
    'federal',
    'MN',
    NULL,
    'Democrat',
    '202-224-5641',
    'https://www.smith.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001203.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001203'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Cindy Hyde-Smith',
    'U.S. Senator',
    'federal',
    'MS',
    NULL,
    'Republican',
    '202-224-5054',
    'https://www.hydesmith.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001079.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001079'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael Cloud',
    'U.S. Representative',
    'federal',
    'TX',
    '27',
    'Republican',
    '202-225-7742',
    'https://cloud.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001115.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001115'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Troy Balderson',
    'U.S. Representative',
    'federal',
    'OH',
    '12',
    'Republican',
    '202-225-5355',
    'https://balderson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001306.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001306'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kevin Hern',
    'U.S. Representative',
    'federal',
    'OK',
    '1',
    'Republican',
    '202-225-2211',
    'https://hern.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001082.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001082'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joseph D. Morelle',
    'U.S. Representative',
    'federal',
    'NY',
    '25',
    'Democrat',
    '202-225-3615',
    'https://morelle.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001206.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001206'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mary Gay Scanlon',
    'U.S. Representative',
    'federal',
    'PA',
    '5',
    'Democrat',
    '202-225-2011',
    'https://scanlon.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001205.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001205'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ed Case',
    'U.S. Representative',
    'federal',
    'HI',
    '1',
    'Democrat',
    '202-225-2726',
    'https://case.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001055.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001055'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Steven Horsford',
    'U.S. Representative',
    'federal',
    'NV',
    '4',
    'Democrat',
    '202-225-9894',
    'https://horsford.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001066.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001066'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Greg Stanton',
    'U.S. Representative',
    'federal',
    'AZ',
    '4',
    'Democrat',
    '202-225-9888',
    'https://stanton.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001211.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001211'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Josh Harder',
    'U.S. Representative',
    'federal',
    'CA',
    '9',
    'Democrat',
    '202-225-4540',
    'https://harder.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001090.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001090'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Levin',
    'U.S. Representative',
    'federal',
    'CA',
    '49',
    'Democrat',
    '202-225-3906',
    'https://levin.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000593.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000593'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Joe Neguse',
    'U.S. Representative',
    'federal',
    'CO',
    '2',
    'Democrat',
    '202-225-2161',
    'https://neguse.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000191.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000191'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jason Crow',
    'U.S. Representative',
    'federal',
    'CO',
    '6',
    'Democrat',
    '202-225-7882',
    'https://crow.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001121.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001121'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jahana Hayes',
    'U.S. Representative',
    'federal',
    'CT',
    '5',
    'Democrat',
    '202-225-4476',
    'https://hayes.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001081.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001081'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'W. Gregory Steube',
    'U.S. Representative',
    'federal',
    'FL',
    '17',
    'Republican',
    '202-225-5792',
    'https://steube.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001214.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001214'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lucy McBath',
    'U.S. Representative',
    'federal',
    'GA',
    '6',
    'Democrat',
    '202-225-4501',
    'https://mcbath.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001208.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001208'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Russ Fulcher',
    'U.S. Representative',
    'federal',
    'ID',
    '1',
    'Republican',
    '202-225-6611',
    'https://fulcher.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000469.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000469'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jesús G. "Chuy" García',
    'U.S. Representative',
    'federal',
    'IL',
    '4',
    'Democrat',
    '202-225-8203',
    'https://chuygarcia.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000586.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000586'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sean Casten',
    'U.S. Representative',
    'federal',
    'IL',
    '6',
    'Democrat',
    '202-225-4561',
    'https://casten.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001117.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001117'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lauren Underwood',
    'U.S. Representative',
    'federal',
    'IL',
    '14',
    'Democrat',
    '202-225-2976',
    'https://underwood.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/U000040.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'U000040'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James R. Baird',
    'U.S. Representative',
    'federal',
    'IN',
    '4',
    'Republican',
    '202-225-5037',
    'https://baird.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001307.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001307'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sharice Davids',
    'U.S. Representative',
    'federal',
    'KS',
    '3',
    'Democrat',
    '202-225-2865',
    'https://davids.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000629.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000629'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lori Trahan',
    'U.S. Representative',
    'federal',
    'MA',
    '3',
    'Democrat',
    '202-225-3411',
    'https://trahan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000482.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000482'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ayanna Pressley',
    'U.S. Representative',
    'federal',
    'MA',
    '7',
    'Democrat',
    '202-225-5111',
    'https://pressley.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000617.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000617'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Elissa Slotkin',
    'U.S. Senator',
    'federal',
    'MI',
    NULL,
    'Democrat',
    '202-224-4822',
    'https://www.slotkin.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001208.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'S001208'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Haley M. Stevens',
    'U.S. Representative',
    'federal',
    'MI',
    '11',
    'Democrat',
    '202-225-8171',
    'https://stevens.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001215.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001215'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rashida Tlaib',
    'U.S. Representative',
    'federal',
    'MI',
    '12',
    'Democrat',
    '202-225-5126',
    'https://tlaib.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000481.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000481'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Angie Craig',
    'U.S. Representative',
    'federal',
    'MN',
    '2',
    'Democrat',
    '202-225-2271',
    'https://craig.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001119.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001119'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ilhan Omar',
    'U.S. Representative',
    'federal',
    'MN',
    '5',
    'Democrat',
    '202-225-4755',
    'https://omar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000173.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000173'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pete Stauber',
    'U.S. Representative',
    'federal',
    'MN',
    '8',
    'Republican',
    '202-225-6211',
    'https://stauber.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001212.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001212'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael Guest',
    'U.S. Representative',
    'federal',
    'MS',
    '3',
    'Republican',
    '202-225-5031',
    'https://guest.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000591.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000591'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chris Pappas',
    'U.S. Representative',
    'federal',
    'NH',
    '1',
    'Democrat',
    '202-225-5456',
    'https://pappas.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000614.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000614'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jefferson Van Drew',
    'U.S. Representative',
    'federal',
    'NJ',
    '2',
    'Republican',
    '202-225-6572',
    'https://vandrew.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000133.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000133'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andy Kim',
    'U.S. Senator',
    'federal',
    'NJ',
    NULL,
    'Democrat',
    '202-224-4744',
    'https://www.kim.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000394.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'K000394'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mikie Sherrill',
    'U.S. Representative',
    'federal',
    'NJ',
    '11',
    'Democrat',
    '202-225-5034',
    'https://sherrill.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001207.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001207'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Susie Lee',
    'U.S. Representative',
    'federal',
    'NV',
    '3',
    'Democrat',
    '202-225-3252',
    'https://susielee.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000590.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000590'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Alexandria Ocasio-Cortez',
    'U.S. Representative',
    'federal',
    'NY',
    '14',
    'Democrat',
    '202-225-3965',
    'https://ocasio-cortez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000172.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000172'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Madeleine Dean',
    'U.S. Representative',
    'federal',
    'PA',
    '4',
    'Democrat',
    '202-225-4731',
    'https://dean.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000631.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000631'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chrissy Houlahan',
    'U.S. Representative',
    'federal',
    'PA',
    '6',
    'Democrat',
    '202-225-4315',
    'https://houlahan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001085.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001085'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Daniel Meuser',
    'U.S. Representative',
    'federal',
    'PA',
    '9',
    'Republican',
    '202-225-6511',
    'https://meuser.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001204.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001204'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Joyce',
    'U.S. Representative',
    'federal',
    'PA',
    '13',
    'Republican',
    '202-225-2431',
    'https://johnjoyce.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000302.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000302'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Guy Reschenthaler',
    'U.S. Representative',
    'federal',
    'PA',
    '14',
    'Republican',
    '202-225-2065',
    'https://reschenthaler.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000610.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000610'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'William R. Timmons IV',
    'U.S. Representative',
    'federal',
    'SC',
    '4',
    'Republican',
    '202-225-6030',
    'https://timmons.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000480.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000480'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dusty Johnson',
    'U.S. Representative',
    'federal',
    'SD',
    '0',
    'Republican',
    '202-225-2801',
    'https://dustyjohnson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000301.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000301'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tim Burchett',
    'U.S. Representative',
    'federal',
    'TN',
    '2',
    'Republican',
    '202-225-5435',
    'https://burchett.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001309.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001309'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John W. Rose',
    'U.S. Representative',
    'federal',
    'TN',
    '6',
    'Republican',
    '202-225-4231',
    'https://johnrose.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000612.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000612'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dan Crenshaw',
    'U.S. Representative',
    'federal',
    'TX',
    '2',
    'Republican',
    '202-225-6565',
    'https://crenshaw.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001120.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001120'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lance Gooden',
    'U.S. Representative',
    'federal',
    'TX',
    '5',
    'Republican',
    '202-225-3484',
    'https://gooden.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000589.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000589'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lizzie Fletcher',
    'U.S. Representative',
    'federal',
    'TX',
    '7',
    'Democrat',
    '202-225-2571',
    'https://fletcher.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000468.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000468'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Veronica Escobar',
    'U.S. Representative',
    'federal',
    'TX',
    '16',
    'Democrat',
    '202-225-4831',
    'https://escobar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000299.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000299'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chip Roy',
    'U.S. Representative',
    'federal',
    'TX',
    '21',
    'Republican',
    '202-225-4236',
    'https://roy.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000614.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000614'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sylvia R. Garcia',
    'U.S. Representative',
    'federal',
    'TX',
    '29',
    'Democrat',
    '202-225-1688',
    'https://sylviagarcia.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000587.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000587'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ben Cline',
    'U.S. Representative',
    'federal',
    'VA',
    '6',
    'Republican',
    '202-225-5431',
    'https://cline.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001118.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001118'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kim Schrier',
    'U.S. Representative',
    'federal',
    'WA',
    '8',
    'Democrat',
    '202-225-7761',
    'https://schrier.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001216.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001216'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bryan Steil',
    'U.S. Representative',
    'federal',
    'WI',
    '1',
    'Republican',
    '202-225-3031',
    'https://steil.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001213.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001213'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Carol D. Miller',
    'U.S. Representative',
    'federal',
    'WV',
    '1',
    'Republican',
    '202-225-3452',
    'https://miller.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001205.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001205'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rick Scott',
    'U.S. Senator',
    'federal',
    'FL',
    NULL,
    'Republican',
    '202-224-5274',
    'https://www.rickscott.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001217.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'S001217'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Josh Hawley',
    'U.S. Senator',
    'federal',
    'MO',
    NULL,
    'Republican',
    '202-224-6154',
    'https://www.hawley.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001089.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'H001089'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jared F. Golden',
    'U.S. Representative',
    'federal',
    'ME',
    '2',
    'Democrat',
    '202-225-6306',
    'https://golden.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000592.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000592'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gregory F. Murphy',
    'U.S. Representative',
    'federal',
    'NC',
    '3',
    'Republican',
    '202-225-3415',
    'https://murphy.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001210.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001210'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kweisi Mfume',
    'U.S. Representative',
    'federal',
    'MD',
    '7',
    'Democrat',
    '202-225-4741',
    'https://mfume.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000687.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000687'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Thomas P. Tiffany',
    'U.S. Representative',
    'federal',
    'WI',
    '7',
    'Republican',
    '202-225-3365',
    'https://tiffany.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000165.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000165'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark Kelly',
    'U.S. Senator',
    'federal',
    'AZ',
    NULL,
    'Democrat',
    '202-224-2235',
    'https://www.kelly.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000377.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'K000377'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Cynthia M. Lummis',
    'U.S. Senator',
    'federal',
    'WY',
    NULL,
    'Republican',
    '202-224-3424',
    'https://www.lummis.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000571.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000571'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Darrell Issa',
    'U.S. Representative',
    'federal',
    'CA',
    '48',
    'Republican',
    '202-225-5672',
    'https://issa.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/I000056.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'I000056'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pete Sessions',
    'U.S. Representative',
    'federal',
    'TX',
    '17',
    'Republican',
    '202-225-6105',
    'https://sessions.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000250.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000250'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David G. Valadao',
    'U.S. Representative',
    'federal',
    'CA',
    '22',
    'Republican',
    '202-225-4695',
    'https://valadao.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000129.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000129'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tommy Tuberville',
    'U.S. Senator',
    'federal',
    'AL',
    NULL,
    'Republican',
    '202-224-4124',
    'https://www.tuberville.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000278.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000278'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John W. Hickenlooper',
    'U.S. Senator',
    'federal',
    'CO',
    NULL,
    'Democrat',
    '202-224-5941',
    'https://www.hickenlooper.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H000273.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H000273'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bill Hagerty',
    'U.S. Senator',
    'federal',
    'TN',
    NULL,
    'Republican',
    '202-224-4944',
    'https://www.hagerty.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H000601.jpg',
    '2021-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H000601'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Barry Moore',
    'U.S. Representative',
    'federal',
    'AL',
    '1',
    'Republican',
    '202-225-2901',
    'https://barrymoore.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001212.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001212'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jay Obernolte',
    'U.S. Representative',
    'federal',
    'CA',
    '23',
    'Republican',
    '202-225-5861',
    'https://obernolte.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000019.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000019'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Young Kim',
    'U.S. Representative',
    'federal',
    'CA',
    '40',
    'Republican',
    '202-225-4111',
    'https://youngkim.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000397.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000397'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sara Jacobs',
    'U.S. Representative',
    'federal',
    'CA',
    '51',
    'Democrat',
    '202-225-2040',
    'https://sarajacobs.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000305.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000305'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lauren Boebert',
    'U.S. Representative',
    'federal',
    'CO',
    '4',
    'Republican',
    '202-225-4761',
    'https://boebert.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B000825.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B000825'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kat Cammack',
    'U.S. Representative',
    'federal',
    'FL',
    '3',
    'Republican',
    '202-225-5744',
    'https://cammack.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001039.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001039'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Scott Franklin',
    'U.S. Representative',
    'federal',
    'FL',
    '18',
    'Republican',
    '202-225-1252',
    'https://franklin.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000472.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000472'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Byron Donalds',
    'U.S. Representative',
    'federal',
    'FL',
    '19',
    'Republican',
    '202-225-2536',
    'https://donalds.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000032.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000032'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Carlos A. Gimenez',
    'U.S. Representative',
    'federal',
    'FL',
    '28',
    'Republican',
    '202-225-2778',
    'https://gimenez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000593.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000593'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Maria Elvira Salazar',
    'U.S. Representative',
    'federal',
    'FL',
    '27',
    'Republican',
    '202-225-3931',
    'https://salazar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000168.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000168'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nikema Williams',
    'U.S. Representative',
    'federal',
    'GA',
    '5',
    'Democrat',
    '202-225-3801',
    'https://nikemawilliams.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000788.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000788'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andrew S. Clyde',
    'U.S. Representative',
    'federal',
    'GA',
    '9',
    'Republican',
    '202-225-9893',
    'https://clyde.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001116.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001116'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marjorie Taylor Greene',
    'U.S. Representative',
    'federal',
    'GA',
    '14',
    'Republican',
    '202-225-5211',
    'https://greene.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000596.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000596'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ashley Hinson',
    'U.S. Representative',
    'federal',
    'IA',
    '2',
    'Republican',
    '202-225-2911',
    'https://hinson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001091.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001091'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mariannette Miller-Meeks',
    'U.S. Representative',
    'federal',
    'IA',
    '1',
    'Republican',
    '202-225-6576',
    'https://millermeeks.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001215.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001215'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Randy Feenstra',
    'U.S. Representative',
    'federal',
    'IA',
    '4',
    'Republican',
    '202-225-4426',
    'https://feenstra.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000446.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000446'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mary E. Miller',
    'U.S. Representative',
    'federal',
    'IL',
    '15',
    'Republican',
    '202-225-5271',
    'https://marymiller.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001211.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001211'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Frank J. Mrvan',
    'U.S. Representative',
    'federal',
    'IN',
    '1',
    'Democrat',
    '202-225-2461',
    'https://mrvan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001214.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001214'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Victoria Spartz',
    'U.S. Representative',
    'federal',
    'IN',
    '5',
    'Republican',
    '202-225-2276',
    'https://spartz.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S000929.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S000929'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tracey Mann',
    'U.S. Representative',
    'federal',
    'KS',
    '1',
    'Republican',
    '202-225-2715',
    'https://mann.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000871.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000871'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jake Auchincloss',
    'U.S. Representative',
    'federal',
    'MA',
    '4',
    'Democrat',
    '202-225-5931',
    'https://auchincloss.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000148.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000148'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lisa C. McClain',
    'U.S. Representative',
    'federal',
    'MI',
    '9',
    'Republican',
    '202-225-2106',
    'https://mcclain.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001136.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001136'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michelle Fischbach',
    'U.S. Representative',
    'federal',
    'MN',
    '7',
    'Republican',
    '202-225-2165',
    'https://fischbach.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000470.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000470'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Deborah K. Ross',
    'U.S. Representative',
    'federal',
    'NC',
    '2',
    'Democrat',
    '202-225-3032',
    'https://ross.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000305.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000305'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Teresa Leger Fernandez',
    'U.S. Representative',
    'federal',
    'NM',
    '3',
    'Democrat',
    '202-225-6190',
    'https://fernandez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000273.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000273'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andrew R. Garbarino',
    'U.S. Representative',
    'federal',
    'NY',
    '2',
    'Republican',
    '202-225-7896',
    'https://garbarino.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000597.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000597'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nicole Malliotakis',
    'U.S. Representative',
    'federal',
    'NY',
    '11',
    'Republican',
    '202-225-3371',
    'https://malliotakis.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000317.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000317'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ritchie Torres',
    'U.S. Representative',
    'federal',
    'NY',
    '15',
    'Democrat',
    '202-225-4361',
    'https://ritchietorres.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000486.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000486'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Stephanie I. Bice',
    'U.S. Representative',
    'federal',
    'OK',
    '5',
    'Republican',
    '202-225-2132',
    'https://bice.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B000740.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B000740'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Cliff Bentz',
    'U.S. Representative',
    'federal',
    'OR',
    '2',
    'Republican',
    '202-225-6730',
    'https://bentz.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B000668.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B000668'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nancy Mace',
    'U.S. Representative',
    'federal',
    'SC',
    '1',
    'Republican',
    '202-225-3176',
    'https://mace.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M000194.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M000194'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Diana Harshbarger',
    'U.S. Representative',
    'federal',
    'TN',
    '1',
    'Republican',
    '202-225-6356',
    'https://harshbarger.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001086.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001086'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pat Fallon',
    'U.S. Representative',
    'federal',
    'TX',
    '4',
    'Republican',
    '202-225-6673',
    'https://fallon.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000246.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000246'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'August Pfluger',
    'U.S. Representative',
    'federal',
    'TX',
    '11',
    'Republican',
    '202-225-3605',
    'https://pfluger.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000048.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000048'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ronny Jackson',
    'U.S. Representative',
    'federal',
    'TX',
    '13',
    'Republican',
    '202-225-3706',
    'https://jackson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000304.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000304'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Troy E. Nehls',
    'U.S. Representative',
    'federal',
    'TX',
    '22',
    'Republican',
    '202-225-5951',
    'https://nehls.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000026.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000026'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tony Gonzales',
    'U.S. Representative',
    'federal',
    'TX',
    '23',
    'Republican',
    '202-225-4511',
    'https://gonzales.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000594.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000594'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Beth Van Duyne',
    'U.S. Representative',
    'federal',
    'TX',
    '24',
    'Republican',
    '202-225-6605',
    'https://vanduyne.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000134.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000134'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Blake D. Moore',
    'U.S. Representative',
    'federal',
    'UT',
    '1',
    'Republican',
    '202-225-0453',
    'https://blakemoore.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001213.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001213'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Burgess Owens',
    'U.S. Representative',
    'federal',
    'UT',
    '4',
    'Republican',
    '202-225-3011',
    'https://owens.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000086.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000086'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marilyn Strickland',
    'U.S. Representative',
    'federal',
    'WA',
    '10',
    'Democrat',
    '202-225-9740',
    'https://strickland.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001159.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001159'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Scott Fitzgerald',
    'U.S. Representative',
    'federal',
    'WI',
    '5',
    'Republican',
    '202-225-5101',
    'https://fitzgerald.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000471.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000471'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Alex Padilla',
    'U.S. Senator',
    'federal',
    'CA',
    NULL,
    'Democrat',
    '202-224-3553',
    'https://www.padilla.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000145.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'P000145'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jon Ossoff',
    'U.S. Senator',
    'federal',
    'GA',
    NULL,
    'Democrat',
    '202-224-3521',
    'https://www.ossoff.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000174.jpg',
    '2021-01-20',
    '2027-01-03',
    'unitedstates-github',
    'O000174'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Raphael G. Warnock',
    'U.S. Senator',
    'federal',
    'GA',
    NULL,
    'Democrat',
    '202-224-3643',
    'https://www.warnock.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000790.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'W000790'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Claudia Tenney',
    'U.S. Representative',
    'federal',
    'NY',
    '24',
    'Republican',
    '202-225-3665',
    'https://tenney.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000478.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000478'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Julia Letlow',
    'U.S. Representative',
    'federal',
    'LA',
    '5',
    'Republican',
    '202-225-8490',
    'https://letlow.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000595.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000595'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Troy A. Carter',
    'U.S. Representative',
    'federal',
    'LA',
    '2',
    'Democrat',
    '202-225-6636',
    'https://troycarter.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001125.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001125'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Melanie A. Stansbury',
    'U.S. Representative',
    'federal',
    'NM',
    '1',
    'Democrat',
    '202-225-6316',
    'https://stansbury.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001218.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001218'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jake Ellzey',
    'U.S. Representative',
    'federal',
    'TX',
    '6',
    'Republican',
    '202-225-2002',
    'https://ellzey.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000071.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000071'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Shontel M. Brown',
    'U.S. Representative',
    'federal',
    'OH',
    '11',
    'Democrat',
    '202-225-7032',
    'https://shontelbrown.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001313.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001313'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Carey',
    'U.S. Representative',
    'federal',
    'OH',
    '15',
    'Republican',
    '202-225-2015',
    'https://carey.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001126.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001126'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sheila Cherfilus-McCormick',
    'U.S. Representative',
    'federal',
    'FL',
    '20',
    'Democrat',
    '202-225-1313',
    'https://cherfilus-mccormick.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001127.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001127'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Flood',
    'U.S. Representative',
    'federal',
    'NE',
    '1',
    'Republican',
    '202-225-4806',
    'https://flood.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000474.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000474'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brad Finstad',
    'U.S. Representative',
    'federal',
    'MN',
    '1',
    'Republican',
    '202-225-2472',
    'https://finstad.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000475.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000475'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Patrick Ryan',
    'U.S. Representative',
    'federal',
    'NY',
    '18',
    'Democrat',
    '202-225-5614',
    'https://patryan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000579.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000579'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Rudy Yakym III',
    'U.S. Representative',
    'federal',
    'IN',
    '2',
    'Republican',
    '202-225-3915',
    'https://yakym.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/Y000067.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'Y000067'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ryan K. Zinke',
    'U.S. Representative',
    'federal',
    'MT',
    '1',
    'Republican',
    '202-225-5628',
    'https://zinke.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/Z000018.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'Z000018'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Katie Boyd Britt',
    'U.S. Senator',
    'federal',
    'AL',
    NULL,
    'Republican',
    '202-224-5744',
    'https://www.britt.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001319.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'B001319'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eric Schmitt',
    'U.S. Senator',
    'federal',
    'MO',
    NULL,
    'Republican',
    '202-224-5721',
    'https://www.schmitt.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001227.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'S001227'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John Fetterman',
    'U.S. Senator',
    'federal',
    'PA',
    NULL,
    'Democrat',
    '202-224-4254',
    'https://www.fetterman.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000479.jpg',
    '2023-01-03',
    '2029-01-03',
    'unitedstates-github',
    'F000479'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dale W. Strong',
    'U.S. Representative',
    'federal',
    'AL',
    '5',
    'Republican',
    '202-225-4801',
    'https://strong.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001220.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001220'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Elijah Crane',
    'U.S. Representative',
    'federal',
    'AZ',
    '2',
    'Republican',
    '202-225-3361',
    'https://crane.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001132.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001132'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Juan Ciscomani',
    'U.S. Representative',
    'federal',
    'AZ',
    '6',
    'Republican',
    '202-225-2542',
    'https://ciscomani.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001133.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001133'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kevin Kiley',
    'U.S. Representative',
    'federal',
    'CA',
    '3',
    'Republican',
    '202-225-2523',
    'https://kiley.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000401.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000401'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kevin Mullin',
    'U.S. Representative',
    'federal',
    'CA',
    '15',
    'Democrat',
    '202-225-3531',
    'https://kevinmullin.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001225.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001225'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sydney Kamlager-Dove',
    'U.S. Representative',
    'federal',
    'CA',
    '37',
    'Democrat',
    '202-225-7084',
    'https://kamlager-dove.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000400.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000400'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert Garcia',
    'U.S. Representative',
    'federal',
    'CA',
    '42',
    'Democrat',
    '202-225-7924',
    'https://robertgarcia.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000598.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000598'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brittany Pettersen',
    'U.S. Representative',
    'federal',
    'CO',
    '7',
    'Democrat',
    '202-225-2645',
    'https://pettersen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000620.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000620'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Aaron Bean',
    'U.S. Representative',
    'federal',
    'FL',
    '4',
    'Republican',
    '202-225-0123',
    'https://bean.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001314.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001314'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Cory Mills',
    'U.S. Representative',
    'federal',
    'FL',
    '7',
    'Republican',
    '202-225-4035',
    'https://mills.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001216.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001216'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Maxwell Frost',
    'U.S. Representative',
    'federal',
    'FL',
    '10',
    'Democrat',
    '202-225-2176',
    'https://frost.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000476.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000476'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Anna Paulina Luna',
    'U.S. Representative',
    'federal',
    'FL',
    '13',
    'Republican',
    '202-225-5961',
    'https://luna.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000596.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000596'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Laurel M. Lee',
    'U.S. Representative',
    'federal',
    'FL',
    '15',
    'Republican',
    '202-225-5626',
    'https://laurellee.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000597.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000597'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jared Moskowitz',
    'U.S. Representative',
    'federal',
    'FL',
    '23',
    'Democrat',
    '202-225-3001',
    'https://moskowitz.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001217.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001217'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Richard McCormick',
    'U.S. Representative',
    'federal',
    'GA',
    '7',
    'Republican',
    '202-225-4272',
    'https://mccormick.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001218.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001218'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Collins',
    'U.S. Representative',
    'federal',
    'GA',
    '10',
    'Republican',
    '202-225-4101',
    'https://collins.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001129.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001129'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James C. Moylan',
    'U.S. Representative',
    'federal',
    'GU',
    '0',
    'Republican',
    '202-225-1188',
    'https://moylan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001219.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001219'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jill N. Tokuda',
    'U.S. Representative',
    'federal',
    'HI',
    '2',
    'Democrat',
    '202-225-4906',
    'https://tokuda.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000487.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000487'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Zachary Nunn',
    'U.S. Representative',
    'federal',
    'IA',
    '3',
    'Republican',
    '202-225-5476',
    'https://nunn.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/N000193.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'N000193'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jonathan L. Jackson',
    'U.S. Representative',
    'federal',
    'IL',
    '1',
    'Democrat',
    '202-225-4372',
    'https://jonathanjackson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000309.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000309'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Delia C. Ramirez',
    'U.S. Representative',
    'federal',
    'IL',
    '3',
    'Democrat',
    '202-225-5701',
    'https://ramirez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000617.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000617'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nikki Budzinski',
    'U.S. Representative',
    'federal',
    'IL',
    '13',
    'Democrat',
    '202-225-2371',
    'https://budzinski.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001315.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001315'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eric Sorensen',
    'U.S. Representative',
    'federal',
    'IL',
    '17',
    'Democrat',
    '202-225-5905',
    'https://sorensen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001225.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001225'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Erin Houchin',
    'U.S. Representative',
    'federal',
    'IN',
    '9',
    'Republican',
    '202-225-5315',
    'https://houchin.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001093.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001093'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Morgan McGarvey',
    'U.S. Representative',
    'federal',
    'KY',
    '3',
    'Democrat',
    '202-225-5401',
    'https://mcgarvey.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001220.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001220'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Glenn Ivey',
    'U.S. Representative',
    'federal',
    'MD',
    '4',
    'Democrat',
    '202-225-8699',
    'https://ivey.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/I000058.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'I000058'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Hillary J. Scholten',
    'U.S. Representative',
    'federal',
    'MI',
    '3',
    'Democrat',
    '202-225-3831',
    'https://scholten.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001221.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001221'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John James',
    'U.S. Representative',
    'federal',
    'MI',
    '10',
    'Republican',
    '202-225-4961',
    'https://james.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000307.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000307'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Shri Thanedar',
    'U.S. Representative',
    'federal',
    'MI',
    '13',
    'Democrat',
    '202-225-5802',
    'https://thanedar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000488.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000488'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark Alford',
    'U.S. Representative',
    'federal',
    'MO',
    '4',
    'Republican',
    '202-225-2876',
    'https://alford.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000379.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000379'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eric Burlison',
    'U.S. Representative',
    'federal',
    'MO',
    '7',
    'Republican',
    '202-225-6536',
    'https://burlison.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001316.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001316'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Ezell',
    'U.S. Representative',
    'federal',
    'MS',
    '4',
    'Republican',
    '202-225-5772',
    'https://ezell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000235.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000235'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Donald G. Davis',
    'U.S. Representative',
    'federal',
    'NC',
    '1',
    'Democrat',
    '202-225-3101',
    'https://dondavis.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000230.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000230'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Valerie P. Foushee',
    'U.S. Representative',
    'federal',
    'NC',
    '4',
    'Democrat',
    '202-225-1784',
    'https://foushee.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000477.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000477'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Chuck Edwards',
    'U.S. Representative',
    'federal',
    'NC',
    '11',
    'Republican',
    '202-225-6401',
    'https://edwards.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000246.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000246'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Thomas H. Kean, Jr.',
    'U.S. Representative',
    'federal',
    'NJ',
    '7',
    'Republican',
    '202-225-5361',
    'https://kean.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000398.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000398'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert Menendez',
    'U.S. Representative',
    'federal',
    'NJ',
    '8',
    'Democrat',
    '202-225-7919',
    'https://menendez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001226.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001226'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gabe Vasquez',
    'U.S. Representative',
    'federal',
    'NM',
    '2',
    'Democrat',
    '202-225-2365',
    'https://vasquez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000136.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000136'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nick LaLota',
    'U.S. Representative',
    'federal',
    'NY',
    '1',
    'Republican',
    '202-225-3826',
    'https://lalota.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000598.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000598'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Daniel S. Goldman',
    'U.S. Representative',
    'federal',
    'NY',
    '10',
    'Democrat',
    '202-225-7944',
    'https://goldman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000599.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000599'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael Lawler',
    'U.S. Representative',
    'federal',
    'NY',
    '17',
    'Republican',
    '202-225-6506',
    'https://lawler.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000599.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000599'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nicholas A. Langworthy',
    'U.S. Representative',
    'federal',
    'NY',
    '23',
    'Republican',
    '202-225-3161',
    'https://langworthy.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000600.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000600'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Greg Landsman',
    'U.S. Representative',
    'federal',
    'OH',
    '1',
    'Democrat',
    '202-225-2216',
    'https://landsman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000601.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000601'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Max L. Miller',
    'U.S. Representative',
    'federal',
    'OH',
    '7',
    'Republican',
    '202-225-3876',
    'https://maxmiller.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001222.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001222'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Emilia Strong Sykes',
    'U.S. Representative',
    'federal',
    'OH',
    '13',
    'Democrat',
    '202-225-6265',
    'https://sykes.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001223.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001223'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Josh Brecheen',
    'U.S. Representative',
    'federal',
    'OK',
    '2',
    'Republican',
    '202-225-2701',
    'https://brecheen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001317.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001317'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Val T. Hoyle',
    'U.S. Representative',
    'federal',
    'OR',
    '4',
    'Democrat',
    '202-225-6416',
    'https://hoyle.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001094.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001094'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andrea Salinas',
    'U.S. Representative',
    'federal',
    'OR',
    '6',
    'Democrat',
    '202-225-5643',
    'https://salinas.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001226.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001226'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Summer L. Lee',
    'U.S. Representative',
    'federal',
    'PA',
    '12',
    'Democrat',
    '202-225-2135',
    'https://summerlee.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000602.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000602'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Christopher R. Deluzio',
    'U.S. Representative',
    'federal',
    'PA',
    '17',
    'Democrat',
    '202-225-2301',
    'https://deluzio.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000530.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000530'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Seth Magaziner',
    'U.S. Representative',
    'federal',
    'RI',
    '2',
    'Democrat',
    '202-225-2735',
    'https://magaziner.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001223.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001223'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Russell Fry',
    'U.S. Representative',
    'federal',
    'SC',
    '7',
    'Republican',
    '202-225-9895',
    'https://fry.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000478.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000478'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Andrew Ogles',
    'U.S. Representative',
    'federal',
    'TN',
    '5',
    'Republican',
    '202-225-4311',
    'https://ogles.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000175.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000175'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nathaniel Moran',
    'U.S. Representative',
    'federal',
    'TX',
    '1',
    'Republican',
    '202-225-3035',
    'https://moran.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001224.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001224'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Keith Self',
    'U.S. Representative',
    'federal',
    'TX',
    '3',
    'Republican',
    '202-225-4201',
    'https://keithself.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001224.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001224'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Morgan Luttrell',
    'U.S. Representative',
    'federal',
    'TX',
    '8',
    'Republican',
    '202-225-4901',
    'https://luttrell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000603.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000603'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Monica De La Cruz',
    'U.S. Representative',
    'federal',
    'TX',
    '15',
    'Republican',
    '202-225-9901',
    'https://delacruz.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000594.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000594'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jasmine Crockett',
    'U.S. Representative',
    'federal',
    'TX',
    '30',
    'Democrat',
    '202-225-8885',
    'https://crockett.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001130.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001130'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Greg Casar',
    'U.S. Representative',
    'federal',
    'TX',
    '35',
    'Democrat',
    '202-225-5645',
    'https://casar.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001131.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001131'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Wesley Hunt',
    'U.S. Representative',
    'federal',
    'TX',
    '38',
    'Republican',
    '202-225-5646',
    'https://hunt.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001095.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001095'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jennifer A. Kiggans',
    'U.S. Representative',
    'federal',
    'VA',
    '2',
    'Republican',
    '202-225-4215',
    'https://kiggans.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000399.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000399'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Becca Balint',
    'U.S. Representative',
    'federal',
    'VT',
    '0',
    'Democrat',
    '202-225-4115',
    'https://balint.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001318.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001318'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marie Gluesenkamp Perez',
    'U.S. Representative',
    'federal',
    'WA',
    '3',
    'Democrat',
    '202-225-3536',
    'https://gluesenkampperez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000600.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000600'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Derrick Van Orden',
    'U.S. Representative',
    'federal',
    'WI',
    '3',
    'Republican',
    '202-225-5506',
    'https://vanorden.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000135.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000135'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Harriet M. Hageman',
    'U.S. Representative',
    'federal',
    'WY',
    '0',
    'Republican',
    '202-225-2311',
    'https://hageman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001096.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001096'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pete Ricketts',
    'U.S. Senator',
    'federal',
    'NE',
    NULL,
    'Republican',
    '202-224-4224',
    'https://www.ricketts.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000618.jpg',
    '2024-11-05',
    '2027-01-03',
    'unitedstates-github',
    'R000618'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jennifer L. McClellan',
    'U.S. Representative',
    'federal',
    'VA',
    '4',
    'Democrat',
    '202-225-6365',
    'https://mcclellan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001227.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001227'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gabe Amo',
    'U.S. Representative',
    'federal',
    'RI',
    '1',
    'Democrat',
    '202-225-4911',
    'https://amo.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000380.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000380'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Celeste Maloy',
    'U.S. Representative',
    'federal',
    'UT',
    '2',
    'Republican',
    '202-225-9730',
    'https://maloy.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001228.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001228'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Thomas R. Suozzi',
    'U.S. Representative',
    'federal',
    'NY',
    '3',
    'Democrat',
    '202-225-3335',
    'https://suozzi.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001201.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001201'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Timothy M. Kennedy',
    'U.S. Representative',
    'federal',
    'NY',
    '26',
    'Democrat',
    '202-225-3306',
    'https://kennedy.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000402.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000402'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Vince Fong',
    'U.S. Representative',
    'federal',
    'CA',
    '20',
    'Republican',
    '202-225-2915',
    'https://fong.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000480.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000480'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael A. Rulli',
    'U.S. Representative',
    'federal',
    'OH',
    '6',
    'Republican',
    '202-225-5705',
    'https://rulli.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000619.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000619'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'LaMonica McIver',
    'U.S. Representative',
    'federal',
    'NJ',
    '10',
    'Democrat',
    '202-225-3436',
    'https://mciver.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001229.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001229'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tony Wied',
    'U.S. Representative',
    'federal',
    'WI',
    '8',
    'Republican',
    '202-225-5665',
    'https://wied.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000829.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000829'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Cleo Fields',
    'U.S. Representative',
    'federal',
    'LA',
    '6',
    'Democrat',
    '202-225-3901',
    'https://fields.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000110.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000110'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Marlin A. Stutzman',
    'U.S. Representative',
    'federal',
    'IN',
    '3',
    'Republican',
    '202-225-4436',
    'https://stutzman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001188.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001188'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gilbert Ray Cisneros, Jr.',
    'U.S. Representative',
    'federal',
    'CA',
    '31',
    'Democrat',
    '202-225-5256',
    'https://cisneros.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001123.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001123'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Angela D. Alsobrooks',
    'U.S. Senator',
    'federal',
    'MD',
    NULL,
    'Democrat',
    '202-224-4524',
    'https://www.alsobrooks.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000382.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'A000382'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tim Sheehy',
    'U.S. Senator',
    'federal',
    'MT',
    NULL,
    'Republican',
    '202-224-2644',
    'https://www.sheehy.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001232.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'S001232'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Bernie Moreno',
    'U.S. Senator',
    'federal',
    'OH',
    NULL,
    'Republican',
    '202-224-2315',
    'https://www.moreno.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001242.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'M001242'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David McCormick',
    'U.S. Senator',
    'federal',
    'PA',
    NULL,
    'Republican',
    '202-224-6324',
    'https://www.mccormick.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001243.jpg',
    '2025-01-03',
    '2031-01-03',
    'unitedstates-github',
    'M001243'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nicholas J. Begich III',
    'U.S. Representative',
    'federal',
    'AK',
    '0',
    'Republican',
    '202-225-5765',
    'https://begich.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001323.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001323'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Shomari Figures',
    'U.S. Representative',
    'federal',
    'AL',
    '2',
    'Democrat',
    '202-225-4931',
    'https://figures.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000481.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000481'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Yassamin Ansari',
    'U.S. Representative',
    'federal',
    'AZ',
    '3',
    'Democrat',
    '202-225-4065',
    'https://ansari.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/A000381.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'A000381'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Abraham J. Hamadeh',
    'U.S. Representative',
    'federal',
    'AZ',
    '8',
    'Republican',
    '202-225-4576',
    'https://hamadeh.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001098.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001098'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Lateefah Simon',
    'U.S. Representative',
    'federal',
    'CA',
    '12',
    'Democrat',
    '202-225-2661',
    'https://simon.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001231.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001231'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Adam Gray',
    'U.S. Representative',
    'federal',
    'CA',
    '13',
    'Democrat',
    '202-225-1947',
    'https://gray.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000605.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000605'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sam T. Liccardo',
    'U.S. Representative',
    'federal',
    'CA',
    '16',
    'Democrat',
    '202-225-8104',
    'https://liccardo.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000607.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000607'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'George Whitesides',
    'U.S. Representative',
    'federal',
    'CA',
    '27',
    'Democrat',
    '202-225-1956',
    'https://whitesides.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000830.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'W000830'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Luz M. Rivas',
    'U.S. Representative',
    'federal',
    'CA',
    '29',
    'Democrat',
    '202-225-6131',
    'https://rivas.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000620.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000620'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Laura Friedman',
    'U.S. Representative',
    'federal',
    'CA',
    '30',
    'Democrat',
    '202-225-4176',
    'https://friedman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000483.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000483'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Derek Tran',
    'U.S. Representative',
    'federal',
    'CA',
    '45',
    'Democrat',
    '202-225-2415',
    'https://tran.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000491.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000491'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Dave Min',
    'U.S. Representative',
    'federal',
    'CA',
    '47',
    'Democrat',
    '202-225-5611',
    'https://min.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001241.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001241'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jeff Hurd',
    'U.S. Representative',
    'federal',
    'CO',
    '3',
    'Republican',
    '202-225-4676',
    'https://hurd.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001100.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001100'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jeff Crank',
    'U.S. Representative',
    'federal',
    'CO',
    '5',
    'Republican',
    '202-225-4422',
    'https://crank.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001137.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001137'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Gabe Evans',
    'U.S. Representative',
    'federal',
    'CO',
    '8',
    'Republican',
    '202-225-5625',
    'https://gabeevans.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000300.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000300'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sarah McBride',
    'U.S. Representative',
    'federal',
    'DE',
    '0',
    'Democrat',
    '202-225-4165',
    'https://mcbride.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001238.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001238'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Haridopolos',
    'U.S. Representative',
    'federal',
    'FL',
    '8',
    'Republican',
    '202-225-3671',
    'https://haridopolos.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001099.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001099'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brian Jack',
    'U.S. Representative',
    'federal',
    'GA',
    '3',
    'Republican',
    '202-225-5901',
    'https://jack.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000311.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000311'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jefferson Shreve',
    'U.S. Representative',
    'federal',
    'IN',
    '6',
    'Republican',
    '202-225-3021',
    'https://shreve.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001229.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001229'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark B. Messmer',
    'U.S. Representative',
    'federal',
    'IN',
    '8',
    'Republican',
    '202-225-4636',
    'https://messmer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001233.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001233'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Derek Schmidt',
    'U.S. Representative',
    'federal',
    'KS',
    '2',
    'Republican',
    '202-225-6601',
    'https://schmidt.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001228.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001228'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Johnny Olszewski, Jr.',
    'U.S. Representative',
    'federal',
    'MD',
    '2',
    'Democrat',
    '202-225-3061',
    'https://olszewski.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000176.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000176'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sarah Elfreth',
    'U.S. Representative',
    'federal',
    'MD',
    '3',
    'Democrat',
    '202-225-4016',
    'https://elfreth.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/E000301.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'E000301'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'April McClain Delaney',
    'U.S. Representative',
    'federal',
    'MD',
    '6',
    'Democrat',
    '202-225-2721',
    'https://mcclaindelaney.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001232.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001232'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tom Barrett',
    'U.S. Representative',
    'federal',
    'MI',
    '7',
    'Republican',
    '202-225-4872',
    'https://barrett.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001321.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001321'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kristen McDonald Rivet',
    'U.S. Representative',
    'federal',
    'MI',
    '8',
    'Democrat',
    '202-225-3611',
    'https://mcdonaldrivet.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001237.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001237'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kelly Morrison',
    'U.S. Representative',
    'federal',
    'MN',
    '3',
    'Democrat',
    '202-225-2871',
    'https://morrison.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001234.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001234'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Wesley Bell',
    'U.S. Representative',
    'federal',
    'MO',
    '1',
    'Democrat',
    '202-225-2406',
    'https://bell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001324.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001324'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert F. Onder, Jr.',
    'U.S. Representative',
    'federal',
    'MO',
    '3',
    'Republican',
    '202-225-2956',
    'https://onder.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/O000177.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'O000177'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Kimberlyn King-Hinds',
    'U.S. Representative',
    'federal',
    'MP',
    '0',
    'Republican',
    '202-225-2646',
    'https://king-hinds.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000404.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000404'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Troy Downing',
    'U.S. Representative',
    'federal',
    'MT',
    '2',
    'Republican',
    '202-225-3211',
    'https://downing.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000634.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000634'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Addison P. McDowell',
    'U.S. Representative',
    'federal',
    'NC',
    '6',
    'Republican',
    '202-225-3065',
    'https://mcdowell.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001240.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001240'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mark Harris',
    'U.S. Representative',
    'federal',
    'NC',
    '8',
    'Republican',
    '202-225-1976',
    'https://markharris.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001102.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001102'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pat Harrigan',
    'U.S. Representative',
    'federal',
    'NC',
    '10',
    'Republican',
    '202-225-2576',
    'https://harrigan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001101.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001101'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brad Knott',
    'U.S. Representative',
    'federal',
    'NC',
    '13',
    'Republican',
    '202-225-4531',
    'https://knott.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000405.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000405'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Tim Moore',
    'U.S. Representative',
    'federal',
    'NC',
    '14',
    'Republican',
    '202-225-5634',
    'https://timmoore.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001236.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001236'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Julie Fedorchak',
    'U.S. Representative',
    'federal',
    'ND',
    '0',
    'Republican',
    '202-225-2611',
    'https://fedorchak.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000482.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'F000482'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Maggie Goodlander',
    'U.S. Representative',
    'federal',
    'NH',
    '2',
    'Democrat',
    '202-225-5206',
    'https://goodlander.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000604.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000604'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Herbert C. Conaway, Jr.',
    'U.S. Representative',
    'federal',
    'NJ',
    '3',
    'Democrat',
    '202-225-4765',
    'https://conaway.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/C001136.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'C001136'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Nellie Pou',
    'U.S. Representative',
    'federal',
    'NJ',
    '9',
    'Democrat',
    '202-225-5751',
    'https://pou.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000621.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'P000621'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Laura Gillen',
    'U.S. Representative',
    'federal',
    'NY',
    '4',
    'Democrat',
    '202-225-5516',
    'https://gillen.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000602.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000602'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'George Latimer',
    'U.S. Representative',
    'federal',
    'NY',
    '16',
    'Democrat',
    '202-225-2464',
    'https://latimer.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/L000606.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'L000606'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Josh Riley',
    'U.S. Representative',
    'federal',
    'NY',
    '19',
    'Democrat',
    '202-225-5441',
    'https://riley.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000622.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000622'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John W. Mannion',
    'U.S. Representative',
    'federal',
    'NY',
    '22',
    'Democrat',
    '202-225-3701',
    'https://mannion.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001231.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001231'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'David J. Taylor',
    'U.S. Representative',
    'federal',
    'OH',
    '2',
    'Republican',
    '202-225-3164',
    'https://taylor.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/T000490.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'T000490'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Maxine Dexter',
    'U.S. Representative',
    'federal',
    'OR',
    '3',
    'Democrat',
    '202-225-4811',
    'https://dexter.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/D000635.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'D000635'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Janelle S. Bynum',
    'U.S. Representative',
    'federal',
    'OR',
    '5',
    'Democrat',
    '202-225-5711',
    'https://bynum.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001326.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001326'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ryan Mackenzie',
    'U.S. Representative',
    'federal',
    'PA',
    '7',
    'Republican',
    '202-225-6411',
    'https://mackenzie.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001230.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001230'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Robert P. Bresnahan, Jr.',
    'U.S. Representative',
    'federal',
    'PA',
    '8',
    'Republican',
    '202-225-5546',
    'https://bresnahan.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001327.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001327'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Pablo José Hernández',
    'U.S. Representative',
    'federal',
    'PR',
    '0',
    'Democrat',
    '202-225-2615',
    'https://hernandez.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001103.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'H001103'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Sheri Biggs',
    'U.S. Representative',
    'federal',
    'SC',
    '3',
    'Republican',
    '202-225-5301',
    'https://sheribiggs.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001325.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001325'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Craig A. Goldman',
    'U.S. Representative',
    'federal',
    'TX',
    '12',
    'Republican',
    '202-225-5071',
    'https://craiggoldman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000601.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000601'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Brandon Gill',
    'U.S. Representative',
    'federal',
    'TX',
    '26',
    'Republican',
    '202-225-7772',
    'https://gill.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000603.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'G000603'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Julie Johnson',
    'U.S. Representative',
    'federal',
    'TX',
    '32',
    'Democrat',
    '202-225-2231',
    'https://juliejohnson.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000310.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'J000310'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Mike Kennedy',
    'U.S. Representative',
    'federal',
    'UT',
    '3',
    'Republican',
    '202-225-7751',
    'https://mikekennedy.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/K000403.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'K000403'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'John J. McGuire III',
    'U.S. Representative',
    'federal',
    'VA',
    '5',
    'Republican',
    '202-225-4711',
    'https://mcguire.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001239.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001239'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Eugene Simon Vindman',
    'U.S. Representative',
    'federal',
    'VA',
    '7',
    'Democrat',
    '202-225-2815',
    'https://vindman.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/V000138.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'V000138'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Suhas Subramanyam',
    'U.S. Representative',
    'federal',
    'VA',
    '10',
    'Democrat',
    '202-225-5136',
    'https://subramanyam.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/S001230.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'S001230'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Michael Baumgartner',
    'U.S. Representative',
    'federal',
    'WA',
    '5',
    'Republican',
    '202-225-2006',
    'https://baumgartner.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/B001322.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'B001322'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Emily Randall',
    'U.S. Representative',
    'federal',
    'WA',
    '6',
    'Democrat',
    '202-225-5916',
    'https://randall.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/R000621.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'R000621'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Riley M. Moore',
    'U.S. Representative',
    'federal',
    'WV',
    '2',
    'Republican',
    '202-225-2711',
    'https://rileymoore.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001235.jpg',
    '2025-01-03',
    '2027-01-03',
    'unitedstates-github',
    'M001235'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James C. Justice',
    'U.S. Senator',
    'federal',
    'WV',
    NULL,
    'Republican',
    '202-224-3954',
    'https://www.justice.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/J000312.jpg',
    '2025-01-14',
    '2031-01-03',
    'unitedstates-github',
    'J000312'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jon Husted',
    'U.S. Senator',
    'federal',
    'OH',
    NULL,
    'Republican',
    '202-224-3353',
    'https://www.husted.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/H001104.jpg',
    '2025-01-21',
    '2029-01-03',
    'unitedstates-github',
    'H001104'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Ashley Moody',
    'U.S. Senator',
    'federal',
    'FL',
    NULL,
    'Republican',
    '202-224-3041',
    'https://www.moody.senate.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/M001244.jpg',
    '2025-01-21',
    '2029-01-03',
    'unitedstates-github',
    'M001244'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Jimmy Patronis',
    'U.S. Representative',
    'federal',
    'FL',
    '1',
    'Republican',
    '202-225-4136',
    'https://patronis.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/P000622.jpg',
    '2025-04-02',
    '2027-01-03',
    'unitedstates-github',
    'P000622'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Randy Fine',
    'U.S. Representative',
    'federal',
    'FL',
    '6',
    'Republican',
    '202-225-2706',
    'https://fine.house.gov',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/F000484.jpg',
    '2025-04-02',
    '2027-01-03',
    'unitedstates-github',
    'F000484'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'James R. Walkinshaw',
    'U.S. Representative',
    'federal',
    'VA',
    '11',
    'Democrat',
    '202-225-1492',
    NULL,
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/W000831.jpg',
    '2025-09-10',
    '2027-01-03',
    'unitedstates-github',
    'W000831'
  );
INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    'Adelita S. Grijalva',
    'U.S. Representative',
    'federal',
    'AZ',
    '7',
    'Democrat',
    '202-225-2435',
    'https://grijalva.house.gov/',
    NULL,
    NULL,
    NULL,
    'https://theunitedstates.io/images/congress/225x275/G000606.jpg',
    '2025-11-12',
    '2027-01-03',
    'unitedstates-github',
    'G000606'
  );