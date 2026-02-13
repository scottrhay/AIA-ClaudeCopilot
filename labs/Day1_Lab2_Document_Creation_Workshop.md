# Lab 2: Document Creation Workshop

**Module:** Day 1 - Claude for Business  
**Duration:** 45 minutes  
**Difficulty:** Beginner to Intermediate

---

## Overview

Create real professional deliverables you can use at work tomorrow. Every exercise produces an artifact-based document: emails, summaries, PowerPoint outlines, and Excel assistance.

### Objectives

After completing this lab, you will be able to:

- Create A/B test variations for emails and marketing content
- Transform long PDFs into concise executive summaries
- Generate PowerPoint deck outlines from CSV data
- Use Claude in Excel for formula assistance
- Produce professional, copy-paste ready outputs

### Prerequisites

- Claude.ai web access
- Sample files in `/labs/sample-data/lab2/`
- (Optional) Excel with Claude plugin installed

---

## Exercise 1: Email A/B Testing (10 min)

Create three versions of the same email for A/B testing different approaches.

### Scenario

You're launching a webinar and need to test different email angles to see what drives registrations.

**Webinar Details:**
- Topic: "AI for Non-Technical Leaders: What You Need to Know"
- Date: March 15, 2026, 2 PM ET
- Audience: VP-level executives at mid-size companies
- Goal: 200 registrations

### Your Prompt

Ask Claude to create 3 email versions testing different hooks:
- Version A: Fear-based (falling behind on AI)
- Version B: Opportunity-based (gain competitive advantage)
- Version C: Practical-based (actionable tactics you can use Monday)

**Your prompt:**
```
Create 3 email versions for A/B testing our webinar registration campaign.

WEBINAR: "AI for Non-Technical Leaders: What You Need to Know"
DATE: March 15, 2026, 2 PM ET
AUDIENCE: VP-level executives at mid-size companies
GOAL: Drive registrations

VERSION A: Fear-based hook
- Lead with risk of falling behind
- Competitor advantage messaging
- FOMO tone

VERSION B: Opportunity-based hook
- Lead with growth/advantage
- "First mover" positioning
- Aspirational tone

VERSION C: Practical-based hook
- Lead with actionable takeaways
- "Use this Monday" messaging
- No-nonsense tone

REQUIREMENTS for each:
- Subject line
- 3-4 paragraph body
- Clear CTA
- ~200 words each

Create as artifact so I can copy/paste to test.
```

### Expected Output

Claude creates artifact with:
```
VERSION A - Fear-Based
Subject: Your competitors are already using AI - are you?

Body:
While your team debates "if" AI matters, your competitors 
are already gaining ground...
[etc.]

---

VERSION B - Opportunity-Based
Subject: The AI advantage your competitors don't have yet

Body:
Join the 12% of executives who've already transformed their
operations with AI...
[etc.]

---

VERSION C - Practical-Based
Subject: 5 AI tactics you can implement this month

Body:
No hype. No theory. Just proven AI strategies you can deploy
starting Monday...
[etc.]
```

**Validation:**
- [ ] 3 distinct versions with different hooks
- [ ] Each has subject line
- [ ] Each 3-4 paragraphs, ~200 words
- [ ] Clear CTA in each
- [ ] Professional formatting in artifact

---

## Exercise 2: PDF → Executive Summary (15 min)

Upload a long PDF document and create a polished executive summary.

### Scenario

Your CEO forwarded a 25-page analyst report on industry trends and needs a summary before tomorrow's board meeting. She needs: key findings, implications for your company, recommended actions.

### Sample File

Use: `/labs/sample-data/lab2/Analyst_Report_Q1_2026.pdf`  
(Or any PDF report you have - industry report, whitepaper, case study)

### Your Prompt

**Step 1:** Upload the PDF to Claude

**Step 2:** Use this prompt structure:

```
I've uploaded a [LENGTH]-page [DOCUMENT TYPE]. Create an executive summary for our CEO.

AUDIENCE: C-suite, reading this before board meeting tomorrow

FORMAT:
1. Overview (2-3 sentences - what is this document?)
2. Key Findings (3-4 most important insights)
3. Implications for Our Company (how does this affect us specifically?)
4. Recommended Actions (3-5 specific next steps we should take)

STYLE:
- Dense with information, zero fluff
- Bullet points for scannability
- Bold key terms for quick visual scanning
- Total length: 1 page maximum

CONTEXT ABOUT OUR COMPANY:
[Add 2-3 sentences about your company/industry to help Claude make relevant connections]

Create as artifact - professional formatting, ready to copy into email.
```

### Expected Output

Professional executive summary artifact:

```
EXECUTIVE SUMMARY: Q1 2026 Industry Outlook

OVERVIEW
Analyst firm Gartner projects 40% YoY growth in enterprise AI spend through 2026, 
with SMB adoption accelerating faster than expected (15% → 34% in 12 months).

KEY FINDINGS
• Enterprise AI budget allocation shifting from "experimental" to "operational" 
  (67% of surveyed companies now have dedicated AI budgets vs. 23% in 2025)
  
• **Competitive moat narrowing**: Tools once requiring data science teams are 
  now accessible via no-code platforms - advantage goes to speed of adoption, 
  not technical sophistication
  
• ROI expectations maturing: Companies now tracking specific metrics (customer 
  acquisition cost reduction, support ticket deflection) vs. vague "efficiency gains"
  
• Privacy and governance becoming purchase blockers: 45% of delayed implementations 
  cite data compliance concerns

IMPLICATIONS FOR OUR COMPANY
• Our current "wait and see" approach = falling behind: 78% of our market segment 
  has already deployed AI in at least one department
  
• Opportunity: Competitors struggling with governance means strong data policies 
  could be competitive differentiator
  
• Risk: Our Q4 customer survey cited "not innovative" 3× more than last year - 
  may be AI perception gap

RECOMMENDED ACTIONS
1. **Immediate** (next 30 days): Audit current AI usage across departments - 
   likely shadow IT adoption we're not tracking
   
2. **Short-term** (Q1): Pilot 2-3 high-visibility AI use cases with measurable ROI 
   (suggest: customer support chatbot, sales email automation)
   
3. **Strategic**: Form AI governance committee before deploying broadly - 
   compliance as differentiator, not blocker
   
4. **Communication**: Update investor/customer messaging to highlight AI adoption - 
   perception matters even if capabilities aren't unique yet
   
5. **Talent**: Prioritize "AI-curious" in next hiring round - adaptability > 
   technical depth for most roles
```

**Validation:**
- [ ] Fits on 1 page
- [ ] Key findings are specific, not generic
- [ ] Implications are tailored to your company/context
- [ ] Actions are specific and time-bound
- [ ] Professional formatting with visual hierarchy

### Iterating on the Artifact (Bonus Step)

Now practice editing the artifact in place. Ask Claude to refine the summary: **"Make the recommended actions more specific with timelines"** or **"Make section 2 more concise."** Notice how the artifact updates without starting over—this is the power of iterative refinement.

---

## Exercise 3: CSV Data → PowerPoint Deck Outline (15 min)

Turn data analysis into a presentation deck outline ready for slides.

### Scenario

You analyzed quarterly sales data and need to present findings to the sales team. Create a PowerPoint deck outline Claude can help you build.

### Sample Data

Use: `/labs/sample-data/lab2/Q1_Sales_Data.csv`

**Or use this sample data (copy/paste to Claude):**

```csv
Region,Product,Q1_Revenue,Q1_Units,YoY_Growth,Rep
Northeast,Enterprise,$245000,12,18%,Sarah M
Northeast,Professional,$89000,34,-5%,Sarah M
Southeast,Enterprise,$178000,9,22%,Mike T
Southeast,Professional,$156000,47,8%,Mike T
Midwest,Enterprise,$134000,7,-12%,Jennifer K
Midwest,Professional,$198000,61,15%,Jennifer K
West,Enterprise,$298000,14,25%,David L
West,Professional,$112000,38,3%,David L
```

### Your Prompt

```
I've uploaded (or pasted) our Q1 sales data. Create a PowerPoint deck outline 
for presenting to the sales team.

GOAL: Celebrate wins, address concerns, align on Q2 strategy

DECK STRUCTURE (8-10 slides):
1. Title slide
2. Exec summary (key numbers)
3-5. Data analysis slides (trends, comparisons, standouts)
6. Wins to celebrate
7. Concerns to address
8. Q2 focus areas
9. Q&A

For EACH SLIDE provide:
- Slide title
- 3-5 bullet points (what goes ON the slide)
- Speaker notes (what I'll SAY - conversational, 30-60 seconds)
- Chart/visual suggestion if applicable

AUDIENCE: Sales team (reps + managers)
TONE: Motivational but honest about challenges

Create as artifact - I'll use this to build the actual deck.
```

### Expected Output

Artifact with complete deck outline:

```
SLIDE 1: Q1 Sales Results Review
• Performance snapshot
• Team recognition
• Agenda overview

SPEAKER NOTES:
"Great work team. Q1 was a strong quarter overall - we're up 12% YoY with some 
standout performances. Today I'll share what's working, where we have opportunities, 
and how we're positioning for an even stronger Q2. Let's dive in."
[30 seconds]

VISUAL: Photo of team or company logo

---

SLIDE 2: Q1 By the Numbers
• Total Revenue: $1.41M (+12% YoY)
• Enterprise: $855K (+13%)
• Professional: $555K (+5%)
• Top region: West (+25%)

SPEAKER NOTES:
"Here's the headline: We crossed $1.4M for the first time. Enterprise growth 
accelerating at 13%, Professional steady at 5%. West region absolutely crushed 
it - David, stand up - 25% growth. That's how it's done."
[45 seconds]

VISUAL: Bar chart comparing Q1 2026 vs Q1 2025 by product line

---

SLIDE 3: Regional Performance Breakdown
• West: $410K (+25%) - David crushing it
• Northeast: $334K (+12%) - Sarah strong on Enterprise
• Southeast: $334K (+18%) - Mike balanced growth
• Midwest: $332K (-3%) - Needs attention

SPEAKER NOTES:
"Three regions showed double-digit growth. Midwest is our focus area - Jennifer, 
not a reflection on you, this is a territory challenge we're solving together. 
Northeast and Southeast both over $330K with healthy Enterprise mix. West set 
the standard at $410K - David's Enterprise win rate is something we all can learn from."
[60 seconds]

VISUAL: Map with regional numbers or horizontal bar chart

---

[Continue for slides 4-9...]
```

**Validation:**
- [ ] 8-10 slides total
- [ ] Each has title + bullets + speaker notes
- [ ] Speaker notes are conversational (SPEAKABLE, not written language)
- [ ] Visual suggestions for data slides
- [ ] Flows logically (data → insights → actions)

---

## Exercise 4: Claude in Excel - Formula Assistance (5 min)

Use Claude in Excel plugin for quick formula help.

### Scenario

You're building a sales dashboard in Excel and need formulas for common calculations.

### Tasks (Do 2-3 of these)

**Option 1: If you have Claude in Excel plugin installed**

1. Open Excel, click Claude in Excel button
2. Ask: "Create a formula to calculate commission: 5% of sales if over $10,000, otherwise 3%"
3. Ask: "Create a formula to find the top 5 products by revenue"
4. Ask: "Format a pivot table showing sales by month and region"

**Option 2: If you DON'T have the plugin**

Use Claude.ai chat to get formulas, then copy to Excel:

**Prompt:**
```
I'm building a sales dashboard in Excel. Give me formulas for:

1. Commission calculation:
   - If sales > $10,000: pay 5% commission
   - If sales ≤ $10,000: pay 3% commission
   - Cell B2 has the sales amount

2. Extract top 5 products:
   - Column A: Product names (A2:A100)
   - Column B: Revenue (B2:B100)
   - Show top 5 by revenue

3. Running total:
   - Column C has daily sales
   - Column D should show cumulative total
   - Starting at row 2

For each: Give me the exact formula, where to put it, and what it does.
```

### Expected Output

Claude provides:

```
1. COMMISSION FORMULA
Put in cell C2:
=IF(B2>10000, B2*0.05, B2*0.03)

What it does:
Checks if sales (B2) exceed $10,000. If yes, multiplies by 5% (0.05). 
If no, multiplies by 3% (0.03).

Copy down the column for all rows.

---

2. TOP 5 PRODUCTS
If you want a separate list, use this array formula:
=SORT(A2:B100, 2, -1)

Then take the first 5 rows.

Or use FILTER + LARGE for more control:
=FILTER(A2:B100, B2:B100>=LARGE(B2:B100,5))

---

3. RUNNING TOTAL
Put in cell D2:
=SUM($C$2:C2)

What it does:
Sums from the start ($C$2 is locked) to current row (C2 updates as 
you copy down). Creates cumulative total.

Copy formula down column D.
```

**Validation:**
- [ ] Formulas are correct Excel syntax
- [ ] Clear explanation of what each does
- [ ] Instructions on where to put them
- [ ] Can copy/paste directly to Excel

---

## Bonus: Combine Everything

### Ultimate Exercise (If you have extra time)

Create a complete deliverable package combining all skills:

1. **Analyze** the Q1 sales CSV
2. **Create** executive summary (Exercise 2 style)
3. **Generate** PowerPoint deck outline (Exercise 3 style)
4. **Draft** email to team announcing results (Exercise 1 style)

**Prompt:**
```
I'm presenting Q1 sales results. Help me create a complete deliverable package:

DATA: [Paste CSV or upload]

CREATE (as separate artifacts):

1. Executive Summary (1 page)
   - For CEO
   - Key findings, wins, concerns, actions

2. PowerPoint Deck Outline (8-10 slides)
   - For sales team presentation
   - Slide titles, bullets, speaker notes, visual suggestions

3. Team Email (3-4 paragraphs)
   - Announce results
   - Celebrate top performers
   - Set Q2 expectations
   - Motivational but honest

For each deliverable:
- Professional formatting
- Action-oriented
- Data-backed insights
```

---

## Key Takeaways

### Document Creation Best Practices

**For Professional Outputs:**
- Always request artifacts ("create as artifact")
- Specify format explicitly (bullets, paragraphs, etc.)
- Define audience (C-suite vs team vs customers)
- Set length constraints (1 page, 200 words, 10 slides)

**For Reusable Templates:**
- Save your best prompts
- Template pattern: [Goal] + [Format] + [Audience] + [Data]
- Reuse monthly/weekly for recurring deliverables

### Artifact Superpowers

✅ **Formatted** - Professional styling built-in  
✅ **Editable** - Refine inline without re-prompting  
✅ **Portable** - Copy/paste to any tool  
✅ **Iterative** - "Make it more concise" works on artifacts  
✅ **Multi-format** - Markdown, code, tables, documents

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Artifact too generic | Add company-specific CONTEXT to prompt |
| Wrong formatting | Specify "create table" or "use bullet points" explicitly |
| Missing key info | Ask "What questions do you need answered to complete this?" |
| Too formal/casual | Add TONE guidance: "conversational", "C-suite formal", etc. |
| No artifact appeared | Say "Create this as an artifact" or "Format as document" |

---

## Summary

In this lab, you created:

1. **Email variations** - A/B testing for campaigns
2. **Executive summaries** - PDF → 1-page insights
3. **PowerPoint outlines** - Data → presentation deck
4. **Excel formulas** - Claude as spreadsheet assistant

All outputs were artifact-based professional deliverables you can use at work.

### Next Steps

- Save these prompts as templates for recurring tasks
- Build a personal prompt library for common deliverables
- Proceed to wrap-up session

---

*© 2026 AIA Copilot | Claude for Business Training*
