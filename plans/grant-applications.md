# Grant Applications - VoteOut Project

This document contains draft grant applications for major foundations. Customize these based on each foundation's specific application requirements and deadlines.

---

## Table of Contents
1. [Knight Foundation Application](#knight-foundation)
2. [Democracy Fund Application](#democracy-fund)
3. [Mozilla Foundation Application](#mozilla-foundation)
4. [MacArthur Foundation Application](#macarthur-foundation)
5. [Application Checklist](#checklist)

---

<a name="knight-foundation"></a>
## 1. Knight Foundation - Civic Tech Grant Application

**Foundation Focus:** Informed and engaged communities, journalism, arts, democracy
**Grant Range:** $50,000 - $500,000 (typical civic tech grants)
**Application Portal:** https://knightfoundation.org/apply/

---

### PROJECT TITLE
**VoteOut: Empowering Voters to Choose Non-Incumbent Candidates Through Personalized Ballot Guides**

---

### EXECUTIVE SUMMARY (250 words)

VoteOut is a nonpartisan digital platform that addresses a critical gap in voter information: the overwhelming advantage of incumbent candidates. In the 2024 elections, 95% of incumbents who ran for reelection won, including 98% of congressional incumbents. This near-universal reelection rate suggests not voter satisfaction, but information asymmetry—voters often don't know which candidates are incumbents, especially in down-ballot races.

VoteOut solves this by providing voters with personalized, address-based ballot guides that clearly identify incumbent and non-incumbent candidates across all races. Users simply enter their address and receive a printable wallet-sized card highlighting non-incumbent options for every contest on their ballot. For voters without printer access, we offer free physical mailing of these cards.

Our service is strictly nonpartisan: we identify incumbents from all political parties equally, providing factual information without ideological bias. We don't tell voters who to vote for—we simply make it easy to identify alternatives to incumbents, enabling truly informed choice.

The platform leverages free and low-cost civic data APIs (Google Civic Information API, Ballotpedia), open-source technology, and efficient print-on-demand mailing services to deliver maximum impact at minimal cost. Our Year 1 goal is to serve 10,000 voters across 20+ states during the 2026 midterm elections, with a total budget of $50,000.

By reducing information asymmetry and lowering the barrier to voting for challengers, VoteOut strengthens democratic accountability and electoral competition. We empower voters with the information they need to make the democracy they want.

**Amount Requested:** $50,000 (Year 1 operations and scaling)

---

### PROBLEM STATEMENT (500 words)

**The Crisis of Incumbent Advantage**

American democracy faces a crisis of electoral competition. In 2024:
- 95% of all incumbents won reelection
- 98% of congressional incumbents won
- 97% of state legislative incumbents won
- 41 states had a 100% incumbent win rate in congressional races

These statistics reflect not widespread voter satisfaction, but structural advantages that insulate incumbents from accountability:

1. **Name Recognition:** Incumbents benefit from years of media coverage and constituent contact
2. **Fundraising Advantage:** Incumbents raise significantly more money than challengers
3. **Institutional Resources:** Access to taxpayer-funded staff, offices, and communications
4. **Information Asymmetry:** Voters often don't know who the incumbent is, especially in down-ballot races

**The Information Gap**

While voters have access to general ballot information through services like Ballotpedia and Vote411, no existing platform specifically helps voters identify non-incumbent candidates. Research shows that:
- Voters spend an average of 2-3 hours researching their full ballot
- Down-ballot races (state legislature, local offices) receive minimal voter attention
- At the voting booth, voters often recognize only the incumbent's name
- Many voters rely on party affiliation alone, missing the incumbent/challenger distinction

This information asymmetry particularly affects:
- **Young voters** who haven't developed voting habits around specific incumbents
- **New residents** who don't know local elected officials
- **Low-information voters** who want to make informed choices but lack time
- **Voters seeking change** who don't know which candidates represent change

**Downstream Effects on Democracy**

The near-universal incumbent advantage has serious consequences:
- **Reduced accountability:** Officials know reelection is nearly guaranteed
- **Legislative stagnation:** Average congressional tenure has reached record highs
- **Decreased competition:** Fewer quality challengers run when incumbents are unbeatable
- **Voter cynicism:** "Nothing ever changes" becomes self-fulfilling
- **Entrenchment:** Long tenures lead to institutional calcification

**Why Existing Solutions Fall Short**

Current voter information tools provide comprehensive ballot data but don't specifically highlight incumbent status:
- **Ballotpedia:** Comprehensive but neutral; incumbent status not emphasized
- **Vote411 (League of Women Voters):** Candidate questionnaires without incumbent filtering
- **BallotReady:** Detailed candidate comparisons without incumbent-focused view
- **ISideWith:** Ideology-based matching that ignores incumbency

**The Solution Opportunity**

Voters deserve a tool that makes a simple question easy to answer: "Who on my ballot is NOT the incumbent?" This single piece of information—presented clearly, nonpartisan, and accessible—can rebalance the information asymmetry and restore meaningful electoral competition.

VoteOut fills this gap.

---

### SOLUTION / PROJECT DESCRIPTION (750 words)

**What We're Building**

VoteOut is a free, nonpartisan web platform where voters enter their address and instantly receive a personalized ballot guide identifying incumbent and non-incumbent candidates in every race. The guide is available in three formats:

1. **Digital View:** On-screen ballot guide with clear incumbent/non-incumbent labels
2. **Printable PDF:** Wallet-sized card (3.5" x 2") to take to the polling place
3. **Mailed Card:** Physical postcard mailed free to the voter's address

**User Experience**

The platform is intentionally simple:

1. **Landing page:** Clear value proposition, address input field, privacy assurance
2. **Address validation:** Normalize and confirm address using Google Civic API
3. **Ballot results:** Display all contests with:
   - Office name (e.g., "U.S. Senate," "State Representative District 23")
   - Incumbent candidate (marked clearly, e.g., grayed or with "(incumbent)" label)
   - Non-incumbent candidates (highlighted in green or with checkmark)
   - Edge cases handled transparently (all incumbents, no incumbents, etc.)
4. **Action options:** Print, email PDF, or request mailed card
5. **Confirmation:** Email confirmation with tracking (for mailed cards)

Total user time: 2-3 minutes from address entry to ballot guide in hand.

**Technical Architecture**

We've designed for maximum impact at minimal cost:

**Frontend:**
- Next.js 14 (React) hosted on Vercel (free tier: unlimited bandwidth)
- Tailwind CSS for responsive design
- Mobile-first, accessible (WCAG 2.1 Level AA)

**Backend:**
- Next.js API routes (serverless, zero server costs)
- PostgreSQL database via Supabase (free tier: 500MB)
- Redis caching via Upstash (reduces API costs)

**Data Sources:**
- **Google Civic Information API** (free, 25,000 queries/day): Address-based ballot lookup
- **Ballotpedia API** (low-cost nonprofit rate): Incumbent status verification
- **OpenFEC API** (free): Federal candidate incumbent status
- **Multi-source verification:** Cross-reference APIs to ensure accuracy

**Mailing Service:**
- **Lob API:** On-demand postcard printing and mailing ($0.63/card)
- Address validation, tracking, delivery confirmation
- Automated queue processing to manage costs

**Why This Approach Works:**

1. **Leverages existing civic data** rather than recreating it
2. **Open source** (MIT license) for transparency and community contribution
3. **Scales efficiently:** Free tiers handle thousands of users; costs scale gradually
4. **Accessible:** Works on any device, no app installation required
5. **Privacy-focused:** Minimal data collection, no tracking, optional email only

**Nonpartisan Methodology**

Our commitment to nonpartisanship is absolute:

- **Objective criteria:** Incumbent status is factual, verifiable, and neutral
- **Equal treatment:** All incumbents marked equally, regardless of party
- **No endorsements:** We identify non-incumbents; voters choose
- **Transparent data sources:** All data from public, nonpartisan APIs
- **Open source code:** Anyone can audit our methodology
- **Clear disclaimers:** "Not authorized by any candidate or political committee"

**Accessibility & Equity**

We've designed for universal access:

- **No payment required:** Entire service is free, including mailed cards
- **No barriers:** No account creation, no email required (unless requesting mail)
- **Multilingual** (Phase 2): Spanish, Chinese, Vietnamese translations
- **Low-bandwidth friendly:** Fast load times, works on older devices
- **Print accessibility:** Large text, high contrast for photocopying
- **Physical mailing:** Reaches voters without printers or digital access

**Scaling Strategy**

**Phase 1 (Months 1-6): Build & Test**
- Develop MVP with digital and print options
- Beta test with 100 users across 5 states
- Verify data accuracy at 95%+ rate
- Add mailing integration
- Refine based on feedback

**Phase 2 (Months 7-12): Pilot Launch**
- Public launch 6 months before 2026 midterms
- Support primary and general elections
- Target: 10,000 users, 2,000 mailed cards
- Partner with 5-10 civic organizations for distribution

**Phase 3 (Year 2): Scale & Enhance**
- Target: 100,000 users, 20,000 mailed cards
- Add multilingual support
- Mobile app development
- API for partner organizations to integrate
- SMS reminders and notifications

**Success Metrics**

We'll measure impact through:

**Usage Metrics:**
- Unique users and ballot guides generated
- Geographic coverage (states, counties)
- Print vs. digital vs. mailed card ratios
- Return users (primary + general elections)

**Accuracy Metrics:**
- Data accuracy rate (target: 98%+)
- User-reported errors and resolution time
- Multi-source data verification rate

**Impact Metrics:**
- Incumbent defeat rate in high-usage districts (compared to baseline)
- User surveys: "VoteOut helped me make more informed choices" (target: 80%+ agree)
- Media coverage and social shares
- Partner organization adoptions

**Equity Metrics:**
- Usage across demographic groups (via optional surveys)
- Mailed card requests by ZIP code (tracking digital divide)
- Accessibility compliance audits

---

### BUDGET NARRATIVE (Year 1 - $50,000)

**Technology Infrastructure: $2,500**
- Domain registration and SSL: $50
- Hosting (Vercel Pro for increased limits): $240/year
- Database (Supabase Pro): $300/year
- Email service (Resend): $240/year
- Analytics (Plausible): $108/year
- API costs (Ballotpedia nonprofit rate): $500/year
- Monitoring and security tools: $500/year
- Development tools and software: $562/year

**Voter Mailing Program: $25,000**
- Target: 40,000 mailed ballot guide cards
- Cost per card (Lob API): $0.63 (printing + postage)
- Contingency for volume discounts and optimization: -$200
- Total: $25,000

**Personnel (Part-time Contractors): $15,000**
- Lead Developer (200 hours @ $50/hr): $10,000
- UX/UI Designer (50 hours @ $60/hr): $3,000
- Data Quality Analyst (40 hours @ $50/hr): $2,000

**Marketing & Outreach: $3,500**
- Digital advertising (pre-election targeted): $1,500
- Press outreach and PR materials: $500
- Partnership development materials: $500
- Social media content creation: $500
- Printed promotional materials (flyers, stickers): $500

**Legal & Compliance: $2,000**
- Legal review of terms, privacy policy: $1,000
- Election law compliance consultation: $1,000

**Evaluation & Research: $1,500**
- User survey tools and incentives: $500
- Data analysis and reporting: $500
- Impact assessment research: $500

**Contingency (10%): $1,500**

**TOTAL: $50,000**

**Budget Justification:**

The majority of funds (50%) support the physical mailing program, which removes a critical barrier for voters without printer access or digital literacy. This investment directly serves voters who are often underserved by digital-only solutions.

Personnel costs (30%) ensure professional development quality and timely delivery. We've kept costs low by using contractors rather than full-time staff.

Technology costs (5%) are minimal thanks to open-source tools and free-tier cloud services, demonstrating fiscal responsibility and sustainability.

Marketing (7%) focuses on reaching voters where they are, particularly through partnerships with existing civic organizations to maximize reach per dollar.

---

### ORGANIZATIONAL CAPACITY

**Current Status:**
VoteOut is in formation stage and will operate under fiscal sponsorship through Open Collective Foundation, a 501(c)(3) organization. This allows us to accept tax-deductible donations immediately while maintaining full transparency through Open Collective's public budget platform.

**Project Leadership:**

**[Your Name], Founder & Project Lead**
[Include your relevant background - technical skills, civic engagement experience, project management, etc. Customize this section with your actual credentials]

Example:
"Background in full-stack web development with 10+ years experience building scalable web applications. Previous civic tech volunteer with Code for America Brigade. Passionate about democratic reform and reducing barriers to voter participation."

**Advisory Support:**

We are building an advisory board including:
- Election law attorney (pro bono support confirmed)
- Political science researcher (specializing in incumbent advantage)
- Civic tech leader from established voter information organization
- UX designer with accessibility expertise

**Partnerships (In Development):**

We are in conversations with:
- **Democracy Works:** Potential data partnership and cross-promotion
- **Code for America Brigades:** Volunteer developer recruitment in multiple cities
- **League of Women Voters (local chapters):** Distribution partnerships
- **TurboVote/Vote.org:** Integration opportunities

**Technical Capacity:**

Our open-source approach enables community contribution and transparency. We will:
- Publish all code on GitHub under MIT license
- Document architecture and APIs for contributor onboarding
- Establish code review and quality assurance processes
- Engage civic tech community for peer review

**Financial Management:**

Through Open Collective Foundation:
- All expenses publicly visible in real-time
- Monthly financial reporting
- Donor transparency (donors can see exactly how funds are used)
- Fiscal sponsor handles IRS compliance and 990 filings

---

### SUSTAINABILITY PLAN

**Year 1 (Grant-Funded):**
Foundation grants (Knight, Democracy Fund, Mozilla) provide runway to build, launch, and prove concept.

**Year 2 (Diversified Funding):**
- **Foundation grants (60%):** Apply for grant renewals with Year 1 impact data; expand to additional foundations
- **Individual donations (25%):** Build recurring donor base through Ko-fi and Open Collective; target 500 monthly donors at $10/month average = $60,000/year
- **Corporate sponsorships (10%):** Nonpartisan civic tech companies (with strict guardrails to prevent influence)
- **University partnerships (5%):** Research grants for studying incumbent advantage and voter behavior

**Year 3+ (Self-Sustaining Model):**
- Proven track record attracts larger multi-year grants
- Strong recurring donor base provides baseline funding
- Potential for earned revenue through API access for researchers (non-voter-facing)
- "Sponsor a District" program: civic groups fund mailings to their communities

**Cost Reduction Strategies:**
- Leverage volunteer developers from civic tech community
- Utilize free tier services (scale up only as needed)
- Negotiate nonprofit rates with vendors
- Optimize mailing costs through batch processing and volume discounts

**Long-term Vision:**
By Year 3, we aim to be a sustainable civic infrastructure project with:
- $150,000-$250,000 annual budget
- Serving 500,000+ voters per election cycle
- Active open-source contributor community
- Integrated into partner organizations' voter outreach
- Potential to form independent 501(c)(3) nonprofit

---

### TIMELINE

**Months 1-2: Foundation**
- Secure fiscal sponsorship (Open Collective Foundation)
- Register domain and set up infrastructure
- Obtain API keys and data partnerships
- Recruit advisory board
- Complete legal review

**Months 3-5: Development**
- Build MVP with address lookup and digital ballot guides
- Integrate election data APIs
- Develop PDF generation and print templates
- Beta test with 100 users across 5 states
- Iterate based on feedback

**Month 6: Mailing Integration**
- Integrate Lob API for physical mailing
- Test with pilot batch (100 cards)
- Set up automated queue and tracking

**Months 7-8: Launch Preparation**
- Finalize partnerships with civic organizations
- Marketing campaign development
- Press outreach and media kit
- Social media setup and content calendar

**Month 9: Soft Launch**
- Public launch 9 months before 2026 midterms
- Focus on early adopter states with 2026 Q1 elections
- Monitor performance and iterate

**Months 10-15: Primary Election Support**
- Support 2026 primary elections (March-August)
- Process mailing requests
- Gather user feedback
- Refine data accuracy

**Months 16-18: General Election Push**
- Major marketing push pre-November 2026 general election
- Peak usage period
- Daily monitoring and support

**Month 18: Evaluation & Reporting**
- Comprehensive impact analysis
- User surveys and testimonials
- Data analysis on incumbent outcomes
- Grant report and Year 2 renewal applications

---

### EQUITY & INCLUSION COMMITMENT

VoteOut is designed for all voters, with special attention to those historically underserved:

**Digital Divide:**
- Physical mailing option ensures access for voters without printers
- Mobile-responsive design for smartphone-only users
- Low-bandwidth optimization for rural areas with limited internet

**Language Access:**
- Phase 2 multilingual support (Spanish, Chinese, Vietnamese, Tagalog)
- Priority based on community language needs in partnership areas

**Accessibility:**
- WCAG 2.1 Level AA compliance (screen readers, keyboard navigation)
- Large print card option
- High contrast design for visual impairments
- Simple language (8th grade reading level)

**Geographic Equity:**
- Support all 50 states equally (not just competitive races)
- Rural and urban coverage
- Tribal lands and territories inclusion

**Economic Access:**
- Entirely free service (no premium features)
- No credit card or payment information ever required
- No ads or monetization of user data

**Measuring Equity:**
- Track mailing request locations (identify digital divide patterns)
- Optional demographic surveys (with privacy protections)
- Partnerships with organizations serving underrepresented communities
- Community feedback loops to identify barriers

---

### EVALUATION PLAN

**Quantitative Metrics:**

*Output Metrics:*
- Unique users served
- Ballot guides generated (digital + mailed)
- Geographic coverage (states, counties, districts)
- Data accuracy rate (verified through multi-source checks)

*Outcome Metrics:*
- Incumbent defeat rate in high-usage districts vs. control districts
- Share of vote going to non-incumbents in served areas
- Time spent on platform (efficiency metric)
- Return user rate (primary to general election)

*Impact Metrics:*
- Change in electoral competition levels (margin of victory analysis)
- Media coverage and public discourse about incumbent advantage
- Policy influence (citations in election reform discussions)

**Qualitative Metrics:**

*User Feedback:*
- Post-election surveys (NPS score, satisfaction, impact self-assessment)
- User testimonials and case studies
- Focus groups with diverse user segments

*Partner Feedback:*
- Interviews with partner organizations about integration value
- Civic educator assessments of tool effectiveness

*Expert Review:*
- Political science researcher analysis of electoral impacts
- Election administration official feedback on accuracy
- Civic tech peer review

**Data Collection Methods:**
- Google Analytics (privacy-respecting configuration)
- Optional post-election email survey (15% response rate target)
- Public election results analysis (comparing served vs. non-served districts)
- Media monitoring for coverage and mentions
- Social media sentiment analysis

**Reporting:**
- Quarterly progress reports to Knight Foundation
- Annual comprehensive impact report (public)
- Real-time public dashboard on Open Collective (budget transparency)
- Blog posts with key findings and user stories

**Learning & Iteration:**
- Monthly data review to identify improvement areas
- Bi-annual user feedback synthesis
- Continuous A/B testing of card designs and messaging
- Open retrospectives with civic tech community

---

### ALIGNMENT WITH KNIGHT FOUNDATION PRIORITIES

VoteOut directly advances Knight Foundation's mission to foster informed and engaged communities:

**Informed Communities:**
- Provides factual, nonpartisan information voters need
- Reduces information asymmetry in elections
- Makes complex ballot research simple and accessible
- Empowers voters with knowledge, not ideology

**Democracy & Civic Engagement:**
- Strengthens electoral accountability
- Increases competition and voter choice
- Reduces barriers to meaningful participation
- Restores faith in democratic responsiveness

**Innovation & Technology:**
- Leverages existing civic data in novel way
- Open-source model enables broader ecosystem
- Scalable, sustainable technology approach
- Sets foundation for future civic tools

**Community Impact:**
- Direct service to voters in Knight Foundation cities
- Partnerships with local civic organizations
- Addresses structural barriers to democratic participation
- Creates infrastructure for ongoing civic engagement

**Alignment with Recent Knight Investments:**

This project complements Knight's previous civic tech investments:
- Like **Democracy Works** ($1.4M), we improve voter information access
- Like **voter engagement tech projects** ($3M), we use technology to increase participation
- Like **Knight Emerging City Champions**, we support community-level democratic innovation

VoteOut fills a specific gap in the civic tech ecosystem that Knight has supported: we make incumbent status transparent, addressing the root cause of reduced electoral competition.

---

### ATTACHMENTS CHECKLIST

- [ ] IRS determination letter (Open Collective Foundation 501(c)(3))
- [ ] Current organizational budget (Open Collective public budget)
- [ ] List of board members / advisors
- [ ] Letters of support from partner organizations
- [ ] Technical architecture diagram
- [ ] Sample ballot guide card design
- [ ] Project timeline (Gantt chart)
- [ ] Evaluation framework detail
- [ ] Prior grant reports (if applicable)
- [ ] Founder/team bios

---

### LETTER OF INQUIRY (LOI) VERSION

If Knight Foundation requires a shorter Letter of Inquiry first, use this condensed version:

**Project Title:** VoteOut: Personalized Ballot Guides to Reduce Incumbent Advantage

**Amount Requested:** $50,000

**Executive Summary (200 words):**

In 2024, 95% of incumbents won reelection, suggesting not voter satisfaction but information asymmetry. VoteOut is a nonpartisan platform that solves this by giving voters personalized ballot guides identifying incumbent and non-incumbent candidates for every race. Users enter their address and receive a printable wallet-sized card or free mailed postcard highlighting their options.

Our service is strictly factual and nonpartisan, treating all incumbents equally regardless of party. We leverage free civic data APIs, open-source technology, and efficient print-on-demand services to serve 10,000 voters in Year 1 (2026 midterms) at minimal cost.

By reducing information barriers and making challenger identification easy, VoteOut strengthens democratic accountability and electoral competition. Our open-source approach ensures transparency and enables community contribution.

We request $50,000 to build, launch, and evaluate VoteOut during the 2026 election cycle, serving voters across 20+ states and mailing 40,000 free ballot guide cards to those without printer access.

**[Include brief sections on Problem, Solution, Impact, and Budget]**

---

<a name="democracy-fund"></a>
## 2. Democracy Fund - Civic Engagement Grant Application

**Foundation Focus:** Voter participation, election integrity, civic engagement
**Grant Range:** $25,000 - $500,000
**Application Portal:** https://democracyfund.org/idea-submission/

---

### PROJECT SUMMARY (250 words)

VoteOut addresses a fundamental barrier to electoral accountability: voters' inability to easily identify which candidates on their ballot are incumbents. With 95% of incumbents winning reelection in 2024—including 98% of congressional incumbents—the United States faces a crisis of electoral competition.

This overwhelming incumbent advantage stems partly from information asymmetry. While voters have access to general ballot information, no tool specifically helps them identify non-incumbent candidates across their entire ballot—particularly in down-ballot races where incumbent advantage is even stronger.

VoteOut fills this gap with a free, nonpartisan web platform where voters enter their address and receive a personalized ballot guide clearly marking incumbent and non-incumbent candidates for every race. The guide is available as a digital view, downloadable PDF, or free mailed postcard—ensuring access regardless of digital access or printing capabilities.

Our methodology is strictly nonpartisan and factual: we identify incumbent status using verified public data sources (Google Civic API, Ballotpedia, OpenFEC) and present this information equally across all political parties. We make no candidate endorsements; we simply make the incumbent/challenger distinction visible.

By reducing information costs and making non-incumbent candidates easier to identify, VoteOut empowers voters to make more informed choices and strengthens electoral competition. Our Year 1 goal is to serve 10,000 voters across 20+ states during the 2026 midterm elections, with particular focus on voters lacking digital access through our free mailing program (target: 2,000 mailed cards).

**Amount Requested:** $35,000

---

### PROBLEM STATEMENT (400 words)

American democracy depends on electoral accountability: voters must be able to remove officials who don't represent their interests. Yet in 2024, 95% of incumbents won reelection, with 41 states seeing 100% congressional incumbent win rates. This isn't because voters are universally satisfied—approval ratings for Congress hover around 20%—but because structural advantages insulate incumbents from competition.

**The Incumbent Advantage:**
- Name recognition from years in office
- Fundraising advantages (incumbents raise 3-5x more than challengers)
- Institutional resources (staff, constituent services, media access)
- Gerrymandering that protects incumbent seats
- **Information asymmetry: voters often don't know who the incumbent is**

While voters can access ballot information through various sources, identifying the incumbent in every race—especially down-ballot—requires significant research. A typical general election ballot includes:
- Federal races (President, Senate, House)
- State races (Governor, Legislature, Statewide offices)
- Local races (Mayor, City Council, School Board, Judges)
- Ballot measures

Researching incumbent status for 15-25 races takes hours. Most voters don't have this time, so they rely on:
- **Party affiliation only** (missing the incumbent/challenger distinction)
- **Name recognition** (which favors incumbents)
- **Under-voting** (skipping races they don't know)

**Who This Affects Most:**
- New residents who don't know local officials
- Young/first-time voters without established political knowledge
- Voters in down-ballot races with minimal media coverage
- Time-constrained voters (working families, caregivers)
- Voters without digital access or research skills

**Democracy Implications:**

When incumbents are nearly unbeatable:
1. **Reduced accountability:** Officials know reelection is virtually guaranteed
2. **Fewer quality challengers:** Strong candidates don't run against "unbeatable" incumbents
3. **Voter cynicism:** "Nothing ever changes" depresses turnout
4. **Policy stagnation:** Lack of competition reduces responsive lawmaking
5. **Demographic lag:** Legislative bodies don't reflect population changes

**The Missing Solution:**

Existing voter guide services (Ballotpedia, Vote411, BallotReady) provide comprehensive information but don't specifically highlight incumbent status or filter for non-incumbent candidates. For a voter who wants to "vote for change" or "support challengers," these tools require manual research of every race.

VoteOut fills this gap: one address, one click, instant identification of non-incumbent candidates across the entire ballot.

---

### SOLUTION (500 words)

**What We're Building:**

VoteOut is a free, nonpartisan digital platform that makes identifying non-incumbent candidates effortless. The entire user experience takes under 3 minutes:

1. Visit voteout.org
2. Enter residential address
3. View personalized ballot with all races
4. See clear incumbent/non-incumbent labels
5. Download PDF, email it, or request free mailed card

**How It Works:**

**Data Integration:**
We aggregate data from authoritative public sources:
- Google Civic Information API (ballot structure and candidates)
- Ballotpedia API (explicit incumbent status flags)
- OpenFEC API (federal candidate incumbent verification)
- State election office data (backup verification)

Multi-source verification ensures 98%+ accuracy. When sources conflict, we flag for manual review.

**User Interface Design:**

The ballot guide uses clear visual hierarchy:

```
YOUR BALLOT - November 5, 2026
Address: [normalized address]

✓ U.S. SENATE
   [ ] Jane Smith (Democratic) - NEW
   [ ] Alex Johnson (Republican) - NEW
   [X] John Doe (Democratic) - INCUMBENT

✓ U.S. HOUSE DISTRICT 7
   [ ] Maria Garcia (Republican) - NEW
   [ ] Sam Wilson (Independent) - NEW
   [X] Bob Williams (Democratic) - INCUMBENT

[Continue for all races...]
```

Visual cues:
- Green checkmark = non-incumbent candidates
- Gray/crossed = incumbent
- Clear "NEW" vs "INCUMBENT" labels
- Party affiliation shown neutrally

**Accessibility Features:**

*Digital:*
- Mobile-responsive design
- Screen reader compatible (WCAG 2.1 AA)
- Fast load times (<2 seconds)
- Works on any device or browser

*Physical:*
- Wallet-sized card (3.5" x 2") fits in pocket
- Large, readable font (14pt minimum)
- High contrast for photocopying
- QR code to digital version

*Mailing:*
- Free postcard mailing for those without printers
- Address validation and USPS tracking
- 5-7 day delivery before election
- Email confirmation and tracking

**Nonpartisan Methodology:**

Our commitment to nonpartisanship:

1. **Objective criteria:** Incumbent status is factual, verifiable public record
2. **Equal treatment:** All parties treated identically
3. **No endorsements:** We identify options; voters choose
4. **Transparent sources:** All data from public, nonpartisan APIs
5. **Open source:** Code and methodology publicly auditable
6. **Clear disclaimers:** Not affiliated with any campaign or party

**Technology Approach:**

- **Open source** (MIT license) for transparency
- **Privacy-first:** Minimal data collection, no tracking
- **Scalable:** Cloud infrastructure scales with demand
- **Cost-efficient:** Free tiers + low marginal costs
- **Resilient:** Multi-region hosting, 99.9% uptime

**Distribution Strategy:**

*Direct:*
- SEO and web search (target: "how to vote out incumbent")
- Social media (Twitter, Facebook, Reddit)
- Press coverage (civic tech, political media)

*Partnerships:*
- League of Women Voters chapters
- Rock the Vote, Vote.org integration
- Code for America Brigades
- University civic engagement centers
- Local libraries (promote free mailing option)

*Viral Loop:*
- Easy social sharing ("I'm voting for change—see your options")
- Word of mouth from satisfied users
- Media coverage of novel approach

**Sustainability:**

Year 1 costs are minimal:
- Infrastructure: ~$500 (mostly free tiers)
- Mailing: $1,260 (2,000 cards @ $0.63)
- Development: Volunteer + modest contractor budget
- **Total: $35,000** (includes marketing, legal, evaluation)

Year 2+ sustainability through:
- Foundation grant renewals (with proven impact data)
- Individual donations (Ko-fi, Open Collective)
- Partner organization cost-sharing for mailings
- Research grants (academic partnerships)

---

### IMPACT & EVALUATION (400 words)

**Theory of Change:**

```
If voters have easy access to incumbent status information
→ They can identify non-incumbent candidates across their ballot
→ More voters will consider non-incumbent options
→ Electoral competition increases
→ Incumbents face greater accountability pressure
→ Democratic responsiveness improves
```

**Short-term Outcomes (Year 1):**

*Reach:*
- 10,000 unique users
- 8,000 digital ballot guides downloaded
- 2,000 physical cards mailed
- Coverage in 20+ states

*Awareness:*
- 80% of users report "learning something new" about their ballot
- 60% of users share tool with others
- Media coverage in 10+ outlets

**Medium-term Outcomes (Year 2-3):**

*Behavior Change:*
- 40% of users vote for at least one non-incumbent they wouldn't have otherwise known about
- Increased vote share for non-incumbents in high-usage districts (measured via exit surveys)

*Electoral Competition:*
- More candidates file to run in districts with high VoteOut usage (comparison analysis)
- Reduced margins of victory for incumbents in served areas

**Long-term Impact (3+ years):**

*Structural Change:*
- Measurable decrease in incumbent win rates in areas with high tool adoption
- Increased challenger candidate quality and fundraising in competitive districts
- Shift in public discourse about incumbent advantage and accountability

**Evaluation Methods:**

*Quantitative:*
- Usage analytics (users, geographic distribution, formats chosen)
- Election results analysis (incumbent win rates in served vs. control districts)
- Vote share analysis (change in non-incumbent vote percentage)
- Challenger recruitment (filings in served districts vs. previous cycles)

*Qualitative:*
- User surveys (post-election): "Did VoteOut influence your vote?" "Did you vote for any non-incumbents you wouldn't have known about?"
- Interviews with challengers: "Did you notice increased voter awareness?"
- Focus groups with diverse user segments
- Media analysis and public discourse tracking

*Equity Analysis:*
- Usage patterns by geography (urban/rural), demographics (via optional surveys)
- Mailing requests as proxy for digital divide
- Accessibility feedback from users with disabilities
- Language access needs assessment

**Reporting:**
- Quarterly reports to Democracy Fund
- Public annual impact report
- Real-time budget transparency (Open Collective)
- Academic publication of findings (partnership with political science researchers)

**Key Question:**
Can a simple information intervention reduce incumbent advantage and increase electoral competition? VoteOut will provide empirical evidence.

---

### BUDGET (Year 1 - $35,000)

| Category | Amount | Description |
|----------|--------|-------------|
| **Technology** | $1,500 | Domain, hosting, APIs, tools |
| **Mailing Program** | $20,000 | 32,000 cards @ $0.63 |
| **Personnel** | $8,000 | Developer + designer contractors |
| **Marketing** | $2,000 | Digital ads, materials |
| **Legal/Compliance** | $1,500 | Election law review |
| **Evaluation** | $1,500 | Surveys, data analysis |
| **Contingency** | $500 | Unexpected costs |
| **TOTAL** | **$35,000** | |

**Notes:**
- 57% of budget goes directly to voter service (mailing)
- Technology costs kept minimal via open source and free tiers
- Focus on proven, cost-effective outreach methods

---

### ORGANIZATIONAL INFORMATION

**Fiscal Sponsor:** Open Collective Foundation (501c3)
**Project Lead:** [Your name and brief bio]
**Advisory Board:** [List advisors with credentials]
**Partnerships:** [Organizations in conversation]

**Capacity:**
- Technical expertise in full-stack development
- Civic tech community connections (Code for America)
- Open-source project management experience
- Commitment to transparency and nonpartisanship

---

### TIMELINE

| Period | Activities |
|--------|------------|
| Months 1-2 | Foundation setup, infrastructure, API integration |
| Months 3-5 | MVP development, beta testing, iteration |
| Month 6 | Mailing integration and pilot test |
| Months 7-8 | Launch preparation, partnerships, marketing |
| Months 9-15 | Primary election support (2026) |
| Months 16-18 | General election push and evaluation |

---

<a name="mozilla-foundation"></a>
## 3. Mozilla Foundation - Technology Fund Application

**Foundation Focus:** Internet health, transparency, digital inclusion, open source
**Grant Range:** $10,000 - $250,000
**Application Portal:** https://foundation.mozilla.org/en/what-we-fund/

---

### PROJECT TITLE
**VoteOut: Open-Source Civic Infrastructure for Electoral Accountability**

---

### EXECUTIVE SUMMARY (200 words)

VoteOut is an open-source platform that addresses information asymmetry in elections by making incumbent status transparent and accessible. In 2024, 95% of US incumbents won reelection, partly due to voters' inability to easily identify which candidates are incumbents—especially in down-ballot races.

Our solution: a free web app where voters enter their address and receive a personalized ballot guide clearly identifying incumbent vs. non-incumbent candidates. The guide is available digitally, as a printable card, or mailed free as a postcard.

**Why This Fits Mozilla's Mission:**

1. **Internet Health:** Uses internet to reduce information asymmetry and strengthen democracy
2. **Open Source:** MIT-licensed codebase, transparent methodology, community-auditable
3. **Digital Inclusion:** Mailed card option bridges digital divide
4. **Privacy:** Minimal data collection, no tracking, user privacy by design
5. **Transparency:** All data sources public, all expenses visible (Open Collective)
6. **Trustworthy:** Nonpartisan, factual, no commercial interests

We request $25,000 to build and launch this civic infrastructure during the 2026 US midterm elections, serving 10,000+ voters and establishing a replicable open-source model for election transparency.

**Amount Requested:** $25,000

---

### ALIGNMENT WITH MOZILLA MISSION (300 words)

**Internet Health:**

VoteOut demonstrates the internet as a force for democratic participation. By aggregating public election data and making it accessible through a simple web interface, we:
- Reduce information costs for voters
- Level the playing field for challenger candidates
- Counter the concentration of incumbent power
- Create public infrastructure, not private profit

**Openness:**

Our open-source approach (MIT license) ensures:
- **Transparency:** Anyone can audit our code and methodology
- **Trust:** Voters can verify our nonpartisan claim
- **Replicability:** Other countries/regions can adapt our model
- **Community:** Civic tech developers can contribute and improve
- **Longevity:** Project outlives any single maintainer

**Privacy & Security:**

We embed privacy from the ground up:
- Minimal data collection (address for lookup only)
- No user accounts or tracking
- No data selling or monetization
- Optional email only (for mailing requests)
- Address deleted after election
- No cookies or analytics that track individuals
- Open-source code allows security audits

**Digital Inclusion:**

While digital-first, we bridge divides:
- Mobile-responsive (smartphone access)
- Low-bandwidth optimized (rural areas)
- Free mailed cards (no printer needed)
- Accessible design (WCAG 2.1 AA compliance)
- Multilingual (Phase 2: Spanish, etc.)
- Works on old devices and browsers

**Decentralization:**

VoteOut creates civic infrastructure, not a walled garden:
- Data from public APIs (not proprietary databases)
- Open API for partners to integrate
- Distributed model (others can run instances)
- No platform lock-in
- Community-owned (fiscal sponsorship, not private company)

**Why Mozilla Should Fund This:**

This project embodies Mozilla's vision of the internet as a global public resource. It uses technology to strengthen democracy, prioritizes user privacy and openness, and creates replicable civic infrastructure. It's the kind of internet we want: transparent, trustworthy, and in service of people.

---

### TECHNICAL APPROACH (400 words)

**Open Source Architecture:**

**Frontend:**
- **Framework:** Next.js 14 (React) with TypeScript
- **Styling:** Tailwind CSS (utility-first, customizable)
- **Forms:** React Hook Form + Zod (type-safe validation)
- **Accessibility:** Radix UI primitives (built-in a11y)
- **Testing:** Jest + React Testing Library

**Backend:**
- **API Routes:** Next.js serverless functions
- **Database:** PostgreSQL (Supabase)
- **Caching:** Redis (Upstash) for API response caching
- **Queue:** BullMQ for mailing request processing

**Infrastructure:**
- **Hosting:** Vercel (edge network, automatic scaling)
- **Database:** Supabase (open-source Firebase alternative)
- **Monitoring:** Open-source APM (e.g., SigNoz)
- **CI/CD:** GitHub Actions

**Data Sources (All Public APIs):**
- Google Civic Information API
- Ballotpedia API
- OpenFEC API
- US Census Geocoder

**Privacy-First Design:**

```typescript
// Example: No user tracking
// We NEVER store:
// - IP addresses beyond rate limiting
// - Browser fingerprints
// - Cross-session identifiers
// - Behavioral analytics

// We ONLY store (temporarily):
interface UserRequest {
  normalizedAddress: string; // For result caching only
  requestedFormat: 'digital' | 'pdf' | 'mail';
  mailingAddress?: string; // Only if mailing requested
  email?: string; // Only if mailing requested, for tracking
  createdAt: Date;
  deleteAfter: Date; // Auto-delete after election
}
```

**Security Measures:**
- Input validation and sanitization
- Rate limiting (prevent abuse)
- HTTPS everywhere
- Content Security Policy headers
- Regular dependency updates (Dependabot)
- Security audits (npm audit, Snyk)

**Scalability:**
- Serverless functions (auto-scale to demand)
- CDN for static assets
- Database connection pooling
- API response caching (Redis)
- Graceful degradation under load

**Testing & Quality:**
- Unit tests (>80% coverage target)
- Integration tests for API flows
- End-to-end tests (Playwright)
- Accessibility audits (axe-core)
- Performance testing (Lighthouse CI)

**Documentation:**
- Comprehensive README
- Architecture decision records (ADRs)
- API documentation (OpenAPI spec)
- Contributing guide
- Code of conduct

**Community Engagement:**
- GitHub Discussions for community input
- Issues labeled "good first issue" for new contributors
- Monthly community calls
- Transparent roadmap and decision-making

**Replicability:**
- Documented deployment process
- Infrastructure as code (Terraform)
- Configuration for different regions/countries
- Localization framework for translations

**Why Open Source Matters Here:**

Election tools must be trustworthy. Closed-source voting tools invite suspicion. By making VoteOut fully open-source:
- Voters can verify our nonpartisan claim
- Security researchers can find vulnerabilities
- Other democracies can adapt our model
- The project outlives any single organization

---

### BUDGET (Year 1 - $25,000)

| Category | Amount |
|----------|--------|
| **Development** | $12,000 |
| - Open-source developer ($50/hr x 200 hrs) | $10,000 |
| - Security audit | $2,000 |
| **Infrastructure** | $2,000 |
| - Hosting, database, APIs | $1,500 |
| - Monitoring and tools | $500 |
| **Mailing Program** | $8,000 |
| - 12,700 cards @ $0.63 | $8,000 |
| **Community Building** | $1,500 |
| - Documentation | $500 |
| - Community management tools | $300 |
| - Contributor recognition/swag | $200 |
| - Translation (community-led) | $500 |
| **Evaluation** | $1,000 |
| - User research and surveys | $1,000 |
| **Contingency** | $500 |
| **TOTAL** | **$25,000** |

---

### IMPACT METRICS

**Open Source Metrics:**
- GitHub stars, forks, contributors
- Pull requests from external contributors
- Installations/deployments by other organizations
- Code reuse in other civic tech projects

**User Impact:**
- Voters served
- Geographic coverage
- Accessibility compliance score
- Privacy audit results

**Democratic Impact:**
- Incumbent win rate changes in served districts
- Electoral competition metrics
- Media coverage and public discourse

---

<a name="macarthur-foundation"></a>
## 4. MacArthur Foundation - Civic Engagement & Democracy

**Foundation Focus:** Democracy, civic participation, institutional reform
**Grant Range:** $50,000 - $500,000
**Application Portal:** https://www.macfound.org/programs/grants/

---

### EXECUTIVE SUMMARY (250 words)

American democracy faces a crisis of electoral accountability. In 2024, 95% of incumbents won reelection, including 98% of congressional incumbents—reelection rates approaching those of authoritarian regimes. While multiple factors contribute to incumbent advantage, one is fixable immediately: information asymmetry.

Most voters cannot easily identify which candidates on their ballot are incumbents, especially in down-ballot races. This information gap—combined with name recognition bias—creates a structural advantage that insulates incumbents from democratic accountability.

VoteOut addresses this through a simple intervention: a free, nonpartisan platform where voters enter their address and receive a personalized ballot guide clearly identifying incumbent and non-incumbent candidates for every race. The guide is available digitally, as a printable card, or mailed free to the voter.

Our approach is strictly nonpartisan—incumbent status is a verifiable fact, not an ideological position. We treat all parties equally and make no endorsements. We simply make visible what was previously obscure.

This modest information intervention has potential for significant impact: if voters can easily identify non-incumbents, electoral competition increases, and democratic accountability strengthens. Our Year 1 goal is to serve 10,000 voters during the 2026 midterms and measure impact on incumbent win rates in high-usage districts.

By reducing a structural barrier to competition, VoteOut contributes to democratic renewal. It doesn't change election law or redistricting—it simply gives voters the information they need to exercise their existing power.

**Amount Requested:** $75,000 (Year 1 operations and research partnership)

---

### THE PROBLEM: INCUMBENT ADVANTAGE & DEMOCRATIC ACCOUNTABILITY (600 words)

**The Accountability Crisis:**

Democratic governance requires electoral accountability: citizens must be able to remove officials who fail to represent their interests. Yet US elections increasingly resemble authoritarian plebiscites in outcome if not process:

*2024 Election Results:*
- 95% of incumbents won reelection (all levels)
- 98% of congressional incumbents won
- 97% of state legislative incumbents won
- 41 states had 100% congressional incumbent win rates

These statistics exist alongside:
- Congressional approval ratings around 20%
- Widespread voter dissatisfaction with "the system"
- High levels of polarization and gridlock
- Public perception that government doesn't respond to ordinary citizens

**The Paradox:**

How can incumbents be nearly unbeatable when voters are deeply dissatisfied? The answer lies in structural advantages:

1. **Fundraising:** Incumbents raise 3-5x more than challengers
2. **Name Recognition:** Years of media coverage and constituent contact
3. **Institutional Resources:** Taxpayer-funded staff, offices, communications
4. **Gerrymandering:** Districts drawn to protect incumbents
5. **Party Polarization:** "Lesser evil" voting reduces incumbent vulnerability
6. **Media Coverage:** Incumbents get more and earlier coverage
7. **Information Asymmetry:** Voters often don't know who the incumbent is

While factors 1-6 require systemic reforms (campaign finance, redistricting, etc.), factor 7 is immediately addressable through better information access.

**The Information Gap:**

Research shows voters spend 2-3 hours researching a full ballot. Down-ballot races receive minimal attention:
- 60% of voters report "not knowing enough" about state legislative candidates
- 70%+ report not knowing local candidates (judges, school board, etc.)
- Incumbent name recognition is the primary heuristic voters use in low-information races

At the voting booth, voters see:
```
STATE REPRESENTATIVE, DISTRICT 47
[ ] Sarah Johnson (Democratic)
[ ] Michael Chen (Republican)
[ ] Patricia Williams (Independent)
```

Unless the voter has researched this race, they don't know:
- Which candidate is the incumbent
- How long the incumbent has served
- Whether they want to vote for change or continuity

Most voters default to:
- Party affiliation (missing the incumbent/challenger distinction)
- Name recognition (which favors incumbents)
- Random choice or undervoting

**Who This Affects:**

The information gap particularly impacts:
- **New residents:** Don't know local officials
- **Young voters:** Lack established political knowledge
- **Time-constrained voters:** Working families, caregivers
- **Down-ballot races:** Where media coverage is minimal
- **Non-college voters:** Less access to research tools/skills

**Downstream Democracy Effects:**

Near-universal incumbent advantage creates:

*Reduced Accountability:*
- Officials know reelection is virtually guaranteed
- Less responsiveness to constituent preferences
- More responsiveness to donors and special interests

*Weaker Competition:*
- Quality challengers don't run against "unbeatable" incumbents
- Primary challenges become only competitive route
- Decreased voter choice

*Legislative Stagnation:*
- Average congressional tenure at record highs
- Seniority system rewards longevity over merit
- Institutional resistance to reform

*Voter Cynicism:*
- "Nothing ever changes" becomes self-fulfilling
- Decreased turnout and engagement
- Loss of faith in democratic responsiveness

*Demographic Lag:*
- Legislative bodies don't reflect population changes
- Younger generations underrepresented
- Geographic mobility not reflected in representation

**The Intervention Opportunity:**

Unlike campaign finance reform or redistricting (which face legal and political barriers), information provision is:
- **Immediately implementable:** No legislation required
- **Nonpartisan:** Benefits voters across ideological spectrum
- **Low-cost:** Leverages existing public data
- **Scalable:** Technology enables mass reach
- **Measurable:** Impact assessable through election results

If voters had easy access to incumbent status information, would electoral competition increase? Would incumbents face greater accountability pressure? Would democratic responsiveness improve?

VoteOut will answer these questions empirically.

---

### SOLUTION: REDUCING INFORMATION ASYMMETRY (500 words)

**The Intervention:**

VoteOut is a web-based platform that makes a simple piece of information universally accessible: which candidates on a voter's ballot are incumbents and which are not.

**User Experience:**
1. Voter visits voteout.org
2. Enters residential address
3. Sees complete personalized ballot
4. Every race shows incumbent status clearly
5. Downloads/prints/requests mailed card

Total time: 2-3 minutes.

**Information Design:**

We present incumbent status with maximum clarity:

```
YOUR BALLOT GUIDE - November 2026
Voter Address: [normalized address]

━━━━━━━━━━━━━━━━━━━━━━━
U.S. SENATE - Choose 1
━━━━━━━━━━━━━━━━━━━━━━━
✓ Sarah Martinez (D) - NEW CANDIDATE
✓ James Wilson (R) - NEW CANDIDATE
  John Incumbent (D) - INCUMBENT (12 years)

━━━━━━━━━━━━━━━━━━━━━━━
U.S. HOUSE DISTRICT 5 - Choose 1
━━━━━━━━━━━━━━━━━━━━━━━
✓ Alex Johnson (R) - NEW CANDIDATE
✓ Maria Garcia (I) - NEW CANDIDATE
  Bob Current (D) - INCUMBENT (8 years)

[Continues for all races...]
```

Visual hierarchy:
- Green checkmarks for non-incumbents
- Clear "NEW" vs "INCUMBENT" labels
- Optional: years in office for incumbents
- Party shown neutrally

**Nonpartisan Methodology:**

Critical to democratic legitimacy:

1. **Factual basis:** Incumbent status is objective, verifiable
2. **Equal treatment:** All incumbents marked equally (D, R, I, etc.)
3. **No endorsements:** We identify; voters decide
4. **Transparent sources:** Public APIs (Google Civic, Ballotpedia, OpenFEC)
5. **Open source:** Code publicly auditable
6. **No conflicts:** No funding from parties, PACs, or campaigns

**Accessibility:**

*Digital Access:*
- Mobile-first responsive design
- Fast loading (<2 seconds)
- Works on any device/browser
- Screen reader compatible

*Physical Access:*
- Printable wallet card (3.5" x 2")
- Free mailed postcard (4" x 6")
- No printer or digital access required

*Information Access:*
- Simple language (8th grade level)
- High contrast design
- Large, readable fonts
- Multilingual (Phase 2)

**Distribution:**

*Direct Channels:*
- Search engine optimization ("how to vote against incumbent")
- Social media (organic + modest paid ads)
- Press coverage (civic tech, political media)

*Partnerships:*
- League of Women Voters chapters
- Rock the Vote, Vote.org
- University civic engagement centers
- Public libraries
- Local civic organizations

*Viral Mechanisms:*
- Easy sharing ("See your non-incumbent options")
- Word of mouth from satisfied users
- Media coverage of novel approach

**Theory of Change:**

```
Reduce information costs for identifying non-incumbents
→ More voters consider non-incumbent candidates
→ Non-incumbents receive more votes
→ Electoral margins tighten
→ Incumbents face greater competition
→ More quality challengers run
→ Incumbents become more responsive
→ Democratic accountability strengthens
```

**Scalability:**

Year 1: 10,000 voters, 20+ states, 2026 midterms
Year 2: 100,000 voters, 50 states, 2027 off-year elections
Year 3: 500,000+ voters, 2028 presidential election

Technology scales efficiently; primary costs are mailing (which adjusts to demand/budget).

---

### RESEARCH PARTNERSHIP & EVALUATION (400 words)

**Research Questions:**

1. **Behavioral:** Does access to incumbent status information change voting behavior?
2. **Electoral:** Do high-VoteOut-usage districts show increased competition?
3. **Challenger:** Do more candidates file in districts with high tool awareness?
4. **Demographic:** Which voter segments use the tool and how?
5. **Long-term:** Does repeated use affect political engagement beyond single election?

**Research Design:**

We propose partnership with political science researchers (e.g., MIT Election Lab, Stanford, Harvard) to conduct rigorous evaluation:

**Quasi-Experimental Design:**
- Treatment: Districts with high VoteOut usage
- Control: Matched districts with no/low usage
- Compare: Incumbent win rates, margins of victory, vote shares

**Data Collection:**
- Pre-election surveys of users (baseline attitudes)
- Post-election surveys (self-reported voting behavior)
- Election results analysis (public data)
- User analytics (geographic, demographic if voluntarily provided)

**Mixed Methods:**
- Quantitative: Election results, usage data, survey responses
- Qualitative: User interviews, challenger candidate interviews, focus groups

**Specific Metrics:**

*Output:*
- Users served, geographic distribution
- Ballot guides generated by format
- Data accuracy rate

*Behavioral:*
- Self-reported voting for non-incumbents
- Reported influence on vote choice
- Information sharing (viral coefficient)

*Electoral:*
- Incumbent win rate (treatment vs. control)
- Average margin of victory (treatment vs. control)
- Non-incumbent vote share (change from baseline)
- Undervoting rate in down-ballot races

*Competition:*
- Candidate filing rates in subsequent cycles
- Challenger fundraising in treatment districts
- Primary election competition

*Equity:*
- Usage patterns by demographics (voluntary surveys)
- Mailed card requests (proxy for digital divide)
- Accessibility feedback

**Academic Outputs:**

- Working papers presented at APSA, MPSA conferences
- Peer-reviewed journal articles
- Public-facing white paper on findings
- Dataset published for other researchers (with privacy protections)

**Policy Implications:**

Findings will inform:
- Election administration (should officials provide similar info?)
- Civic education (how to reduce information costs?)
- Democratic reform (evidence for institutional changes)
- Civic tech design (what interventions work?)

**Timeline:**
- Pre-launch: Baseline data collection
- During election: Real-time monitoring
- Post-election: Data analysis and publication
- Year 2: Longitudinal analysis

---

### BUDGET (Year 1 - $75,000)

| Category | Amount | Notes |
|----------|--------|-------|
| **Technology & Infrastructure** | $3,000 | Hosting, APIs, tools |
| **Personnel** | $35,000 | Developer, designer, project manager (contractors) |
| **Mailing Program** | $20,000 | 32,000 cards @ $0.63 |
| **Research Partnership** | $10,000 | Academic researcher time, surveys, analysis |
| **Marketing & Outreach** | $3,000 | Digital ads, partnerships, materials |
| **Legal & Compliance** | $2,000 | Election law review, privacy compliance |
| **Evaluation & Reporting** | $1,500 | Data analysis, impact reporting |
| **Contingency** | $500 | Unexpected costs |
| **TOTAL** | **$75,000** | |

**Budget Justification:**
- Research partnership (13%) ensures rigorous evaluation
- Mailing program (27%) directly serves voters without digital access
- Personnel (47%) ensures professional execution
- Technology minimal due to open source and free tiers

---

### ALIGNMENT WITH MACARTHUR PRIORITIES

VoteOut advances MacArthur's democracy and civic participation priorities:

**Strengthening Democratic Institutions:**
- Increases electoral competition (foundational to democracy)
- Enhances accountability mechanisms
- Reduces structural barriers to challenger success

**Civic Participation:**
- Lowers information costs for voting
- Empowers voters with actionable information
- Bridges digital divide through mailing program

**Institutional Reform:**
- Evidence base for election administration improvements
- Demonstrates scalable intervention model
- Informs future civic tech investments

**Research & Learning:**
- Rigorous evaluation design
- Academic partnership
- Public knowledge contribution

MacArthur has previously funded Democracy Works for voter information access. VoteOut complements this by focusing specifically on the incumbent advantage problem—a structural barrier to democratic accountability that existing tools don't address.

---

<a name="checklist"></a>
## 5. Grant Application Checklist

### Before Submitting ANY Grant:

**Research:**
- [ ] Read full grant guidelines thoroughly
- [ ] Review previously funded projects (if published)
- [ ] Confirm eligibility (geographic, organizational, focus area)
- [ ] Note application deadline and decision timeline
- [ ] Identify required vs. optional attachments

**Customization:**
- [ ] Tailor application to foundation's specific language and priorities
- [ ] Quote from foundation's mission statement or strategic plan
- [ ] Reference foundation's previous relevant grants
- [ ] Match budget to foundation's typical grant range
- [ ] Adjust emphasis (tech for Mozilla, democracy for Democracy Fund, etc.)

**Documents to Prepare:**
- [ ] IRS determination letter (Open Collective Foundation)
- [ ] Current organizational budget (Open Collective public page)
- [ ] Project budget (detailed and justified)
- [ ] Project timeline (Gantt chart or table)
- [ ] Letters of support (2-3 from partner organizations)
- [ ] Team bios (founder + advisors)
- [ ] Technical architecture diagram
- [ ] Sample ballot guide card mockup
- [ ] Evaluation framework detail
- [ ] Open Collective profile link (for budget transparency)

**Partnerships to Secure First:**
- [ ] Academic researcher (for evaluation partnership)
- [ ] Election law attorney (pro bono commitment letter)
- [ ] 2-3 civic organizations (letters of support)
- [ ] Technical advisors (bio permissions)

**Narrative Refinement:**
- [ ] Proofread multiple times (zero typos)
- [ ] Check word/character limits strictly
- [ ] Use active voice and clear language
- [ ] Include specific numbers and evidence
- [ ] Tell compelling story while staying factual
- [ ] Have 2-3 people review before submitting

### Foundation-Specific Reminders:

**Knight Foundation:**
- Emphasize informed communities and local impact
- Mention Knight Foundation cities if applicable
- Highlight technology + journalism/democracy intersection
- Show community engagement and partnerships

**Democracy Fund:**
- Focus on voter access and electoral competition
- Emphasize nonpartisan approach strongly
- Highlight equity and inclusion
- Show measurable impact on democratic participation

**Mozilla Foundation:**
- Lead with open source and transparency
- Emphasize internet health and privacy
- Show technical architecture clearly
- Highlight community building and replicability

**MacArthur Foundation:**
- Focus on institutional reform and accountability
- Emphasize research partnership and rigorous evaluation
- Show long-term structural change potential
- Highlight equity implications

### Timeline for Submissions:

| Foundation | Research Deadline | Draft Due | Review | Submit |
|------------|-------------------|-----------|--------|--------|
| Knight Foundation | Week 1 | Week 2-3 | Week 4 | Week 5 |
| Democracy Fund | Week 1 | Week 2-3 | Week 4 | Week 5 |
| Mozilla Foundation | Week 1 | Week 3-4 | Week 5 | Week 6 |
| MacArthur Foundation | Week 1 | Week 3-4 | Week 5 | Week 6 |

**Strategy:** Submit to Knight and Democracy Fund first (more aligned, faster decisions). Use feedback to refine Mozilla and MacArthur applications.

### After Submission:

- [ ] Send thank-you email to program officer
- [ ] Add to calendar: decision notification date
- [ ] Prepare for potential interview/questions
- [ ] Continue project development (don't wait for decisions)
- [ ] Document progress for updates to funders
- [ ] Build relationships with program officers (appropriate check-ins)

### If Accepted:

- [ ] Send thank-you letter
- [ ] Clarify reporting requirements
- [ ] Set up regular communication schedule
- [ ] Begin project with clear milestones
- [ ] Document everything for reports

### If Rejected:

- [ ] Request feedback (most foundations will provide)
- [ ] Revise and resubmit next cycle if allowed
- [ ] Apply lessons to other foundation applications
- [ ] Don't get discouraged—rejection is common in grant funding

---

## Additional Funding Opportunities to Research:

1. **Open Society Foundations** - Democracy & civic participation
2. **Omidyar Network** - Civic tech and governance
3. **Rita Allen Foundation** - Civic science and engagement
4. **Schmidt Futures** - Tech for public good
5. **Hewlett Foundation** - Democracy and civic engagement
6. **Arnold Ventures** - Evidence-based policy
7. **Rockefeller Foundation** - Digital civic infrastructure
8. **Ford Foundation** - Democracy and civic participation
9. **Lumina Foundation** - Civic learning (if youth-focused angle)
10. **NEH (National Endowment for Humanities)** - Digital humanities if framed as civic education

---

**These applications are starting points. Customize extensively based on each foundation's specific requirements, language, and priorities. Good luck!**
