#!/usr/bin/env node

/**
 * Seed Federal Representatives from unitedstates/congress-legislators data
 *
 * Usage: node scripts/seed-congress.js
 *
 * This script:
 * 1. Downloads current legislators from GitHub
 * 2. Transforms to our database schema
 * 3. Generates SQL INSERT statements
 * 4. Saves to supabase/seed/congress_data.sql
 */

const https = require('https');
const fs = require('fs');
const path = require('path');

// Data source
const LEGISLATORS_URL = 'https://unitedstates.github.io/congress-legislators/legislators-current.json';

// Output file
const OUTPUT_FILE = path.join(__dirname, '../supabase/seed/congress_data.sql');

/**
 * Download JSON data from URL
 */
function downloadJSON(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      let data = '';

      res.on('data', (chunk) => {
        data += chunk;
      });

      res.on('end', () => {
        try {
          resolve(JSON.parse(data));
        } catch (e) {
          reject(e);
        }
      });
    }).on('error', reject);
  });
}

/**
 * Transform legislator to SQL INSERT statement
 */
function legislatorToSQL(leg) {
  const { id, name, terms, bio } = leg;

  // Get current term (last in array)
  const currentTerm = terms[terms.length - 1];

  // Determine office
  let office;
  if (currentTerm.type === 'sen') {
    office = 'U.S. Senator';
  } else if (currentTerm.type === 'rep') {
    office = 'U.S. Representative';
  } else {
    return null; // Skip non-current positions
  }

  // Get district for House reps
  const district = currentTerm.type === 'rep' ? currentTerm.district.toString() : null;

  // Build contact info
  const phone = currentTerm.phone || null;
  const website = currentTerm.url || null;

  // Social media
  const twitter = id.twitter || null;
  const facebook = id.facebook || null;
  const youtube = id.youtube || null;

  // Photo URL
  const photoUrl = `https://theunitedstates.io/images/congress/225x275/${id.bioguide}.jpg`;

  // Escape single quotes in strings
  const escape = (str) => str ? str.replace(/'/g, "''") : null;

  return `INSERT INTO representatives (
    name, office, level, state, district, party,
    phone, website, twitter, facebook, youtube,
    photo_url, term_start, term_end, source, external_id
  ) VALUES (
    '${escape(name.official_full || name.first + ' ' + name.last)}',
    '${office}',
    'federal',
    '${currentTerm.state}',
    ${district ? `'${district}'` : 'NULL'},
    '${escape(currentTerm.party)}',
    ${phone ? `'${escape(phone)}'` : 'NULL'},
    ${website ? `'${escape(website)}'` : 'NULL'},
    ${twitter ? `'${escape(twitter)}'` : 'NULL'},
    ${facebook ? `'${escape(facebook)}'` : 'NULL'},
    ${youtube ? `'${escape(youtube)}'` : 'NULL'},
    '${photoUrl}',
    '${currentTerm.start}',
    '${currentTerm.end}',
    'unitedstates-github',
    '${id.bioguide}'
  );`;
}

/**
 * Main execution
 */
async function main() {
  console.log('📥 Downloading current legislators from GitHub...');

  try {
    const legislators = await downloadJSON(LEGISLATORS_URL);
    console.log(`✅ Downloaded ${legislators.length} legislators`);

    console.log('🔄 Transforming to SQL...');

    // Generate SQL
    const sqlStatements = [
      '-- Generated Congress Data',
      '-- Source: https://github.com/unitedstates/congress-legislators',
      `-- Generated: ${new Date().toISOString()}`,
      '',
      '-- Clear existing federal reps (except President/VP)',
      "DELETE FROM representatives WHERE level = 'federal' AND state IS NOT NULL;",
      '',
      '-- Insert Senators and Representatives',
    ];

    let senatorCount = 0;
    let houseCount = 0;

    legislators.forEach((leg) => {
      const sql = legislatorToSQL(leg);
      if (sql) {
        sqlStatements.push(sql);

        const currentTerm = leg.terms[leg.terms.length - 1];
        if (currentTerm.type === 'sen') {
          senatorCount++;
        } else if (currentTerm.type === 'rep') {
          houseCount++;
        }
      }
    });

    const sql = sqlStatements.join('\n');

    console.log(`✅ Generated SQL for:`);
    console.log(`   - ${senatorCount} Senators`);
    console.log(`   - ${houseCount} House Representatives`);

    // Write to file
    fs.writeFileSync(OUTPUT_FILE, sql, 'utf-8');
    console.log(`\n💾 Saved to: ${OUTPUT_FILE}`);
    console.log(`\n📋 Next steps:`);
    console.log(`   1. Review the generated SQL file`);
    console.log(`   2. Run: supabase db psql < supabase/seed/congress_data.sql`);
    console.log(`   3. Or import via Supabase dashboard\n`);

  } catch (error) {
    console.error('❌ Error:', error.message);
    process.exit(1);
  }
}

main();
