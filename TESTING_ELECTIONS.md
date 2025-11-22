# Testing with Elections

Since there are currently no upcoming elections, here are strategies for testing the ballot feature:

## Option 1: Use Test Mode (Recommended)

Add `testMode: true` to your API request to use Google's test election (ID 2000):

### Browser Console Test
```javascript
fetch('http://localhost:3001/api/ballot', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    address: {
      line1: '1600 Amphitheatre Parkway',
      city: 'Mountain View',
      state: 'CA',
      zip: '94043'
    },
    testMode: true
  })
}).then(r => r.json()).then(console.log)
```

### What This Does
- Uses Google's permanent test election (ID 2000)
- Returns realistic ballot data with sample contests and candidates
- Great for development and testing UI/UX

## Option 2: Use a Past Election

You can find real past election IDs and use them. For example, the November 2024 general election likely has an ID you can use.

### Finding Election IDs
```javascript
// List all available elections
fetch('https://www.googleapis.com/civicinfo/v2/elections?key=YOUR_API_KEY')
  .then(r => r.json())
  .then(console.log)
```

Then modify the code to use a specific election ID.

## Option 3: Create Mock Data

For complete control, create fake election data in the database or mock the API responses.

## Current Implementation

The app is set up to:
- ✅ Skip test election 2000 by default (production behavior)
- ✅ Allow test election 2000 when `testMode: true` is passed
- ✅ Show "No Upcoming Elections" when no elections are found
- ✅ Still show representatives even with no election

## Testing Tips

1. **Test Mode is Best**: Use `testMode: true` for consistent, repeatable testing
2. **Cache Awareness**: Test mode has separate cache keys, so it won't interfere with production data
3. **Representatives Always Work**: Even without elections, the representatives tab will show current officials

## Example Addresses for Testing

These addresses work well with Google's test election:

```javascript
// California
{
  line1: '1600 Amphitheatre Parkway',
  city: 'Mountain View',
  state: 'CA',
  zip: '94043'
}

// Texas
{
  line1: '1100 Congress Ave',
  city: 'Austin',
  state: 'TX',
  zip: '78701'
}

// New York
{
  line1: '350 5th Ave',
  city: 'New York',
  state: 'NY',
  zip: '10118'
}
```
