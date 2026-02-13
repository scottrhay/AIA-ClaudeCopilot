# Lab 1: Practical Prompting & Document Creation

**Module:** Day 1 - Claude for Business  
**Duration:** 45 minutes  
**Difficulty:** Beginner

---

## Overview

In this lab, you'll practice effective prompting and create real professional documents using Claude's artifact feature. Every exercise produces a deliverable you can use at work.

### Objectives

After completing this lab, you will be able to:

- Transform vague prompts into effective ones using GOLDEN framework
- Create professional reports from data
- Generate presentation outlines with speaker notes
- Analyze PDF documents and create executive summaries
- Use artifacts to get copy-paste ready outputs

### Prerequisites

- Access to Claude.ai (web interface)
- Sample files provided in `/labs/sample-data/`

---

## Exercise 1: GOLDEN Framework Practice (10 min)

Transform three vague prompts into effective ones using the GOLDEN framework.

**GOLDEN Framework:**
- **G**oal - What you want to achieve
- **O**utput format - How you want the result
- **L**ength - How much detail
- **D**etails - Context Claude needs
- **E**xamples - Show what good looks like
- **N**otes - Constraints, tone, audience

---

### Prompt 1: Too Vague

**Original (Bad):**
```
Help me with marketing.
```

**Your Task:** Rewrite using GOLDEN framework for a social media campaign.

**Space for your answer:**
```
[Write your improved prompt here]




```

**Suggested Answer:**
```
GOAL: Create a 30-day social media campaign for our new CRM product

OUTPUT: Campaign calendar with daily post ideas

LENGTH: 30 posts total (mix of LinkedIn, Twitter)

DETAILS:
- Product: Cloud CRM for small businesses
- Target audience: Solo entrepreneurs, 1-10 person companies
- Key benefits: Easy setup, affordable ($29/month), integrates with tools they already use

EXAMPLES:
- Post idea: "Stop losing leads in your inbox. [Product] turns every email into a tracked opportunity."
- Post idea: Customer success story with revenue growth stat

NOTES: 
- Professional but friendly tone
- Focus on pain points (lost leads, messy spreadsheets, missed follow-ups)
- Include mix of educational, promotional, customer stories
```

---

### Prompt 2: Email Response

**Original (Bad):**
```
Write an email declining the request.
```

**Your Task:** Rewrite for declining a vendor proposal professionally.

**Your improved prompt:**
```
[Write it here]




```

**Suggested Answer:**
```
GOAL: Decline vendor proposal while maintaining good relationship

OUTPUT: Professional email (3-4 paragraphs)

LENGTH: ~200 words

DETAILS:
- Vendor: Proposing $50K software solution
- Reason for decline: Budget allocated elsewhere this year
- Want to keep door open for future
- Appreciated their thorough proposal

NOTES:
- Warm but firm
- Thank them for their time
- Offer to reconnect next budget cycle
```

---

### Prompt 3: Report Request

**Original (Bad):**
```
Analyze the data.
```

**Your Task:** Rewrite for quarterly sales analysis.

**Your improved prompt:**
```
[Write it here]




```

**Suggested Answer:**
```
GOAL: Analyze Q4 sales data and identify trends

OUTPUT: Executive summary with bullet points and 2-3 charts

LENGTH: 1 page summary + visualizations

DETAILS:
- Data: Q4 sales by region, product, rep
- Looking for: Growth areas, declining products, top performers
- Context: Down 5% overall, need to understand why

EXAMPLES:
- "Northeast region up 12% driven by Enterprise deals"
- "Product X declining 20% - investigate support ticket volume"

NOTES:
- Audience: Executive team
- Action-oriented recommendations
- Flag risks and opportunities
```

---

## Exercise 2: Create Professional Report (15 min)

Use Claude to create a formatted business report from sample data.

### Scenario

You're a product manager presenting monthly metrics to leadership. Use the sample data to create a professional report.

### Sample Data (Copy/Paste to Claude)

```
Monthly Product Metrics - January 2026

Active Users: 15,234 (↑ 8% vs December)
New Signups: 1,892 (↑ 12%)
Churn Rate: 2.3% (↓ 0.4%)
Average Session Time: 18.5 minutes (↑ 2.1 min)
Feature Adoption:
- New Dashboard: 67% of active users
- Reporting Module: 34%
- API Access: 12%

Support Tickets: 342 (↑ 15%)
- Bug reports: 89
- Feature requests: 156
- How-to questions: 97

Revenue: $287,400 (↑ 9%)
ARPU: $18.87 (↑ $0.50)
```

### Your Prompt

Write a prompt that creates an artifact-based report with:
- Executive summary
- Key metrics with trend interpretation
- Wins to celebrate
- Concerns to address
- Recommended actions

**Your prompt:**
```
[Write your prompt here - include GOLDEN elements]






```

### Expected Output

Claude should create an artifact (the 📄 icon appears) with a formatted report you can copy and use.

**Validation:** Does your artifact include:
- [ ] Clear executive summary
- [ ] Metrics with % changes highlighted
- [ ] 2-3 wins identified
- [ ] 1-2 concerns flagged
- [ ] 3-5 action items

---

## Exercise 3: Presentation Outline with Speaker Notes (10 min)

Create a presentation outline for an upcoming stakeholder meeting.

### Scenario

You need to present the Q1 budget proposal to department heads. Create a slide outline with speaker notes.

### Your Prompt

Ask Claude to create:
- 8-10 slide titles
- 2-3 bullet points per slide
- Speaker notes for each slide (what to SAY, not just what's on screen)
- Time allocation per section

**Topic:** Q1 Budget Proposal - $500K request for new CRM implementation

**Your prompt:**
```
[Write your GOLDEN-structured prompt here]






```

### Expected Output

Claude creates artifact with:
```
Slide 1: Budget Proposal Overview
- Requesting: $500K for CRM implementation
- Timeline: Q1-Q2 2026
- Expected ROI: 3:1 within 18 months

SPEAKER NOTES:
"Good morning team. I'm requesting $500K to implement a modern CRM system.
This replaces our current patchwork of spreadsheets and siloed databases.
I'll show you the business case, implementation plan, and ROI projections."
[2 minutes]

Slide 2: Current State Problems
...
```

**Validation:**
- [ ] 8-10 slides with clear titles
- [ ] Bullet points are concise
- [ ] Speaker notes are in conversational language (speakable)
- [ ] Time allocations add up to ~30 minutes

---

## Exercise 4: PDF Analysis & Executive Summary (10 min)

Upload a PDF and create an executive summary.

### Scenario

Your boss sent you a 12-page industry report and needs a 1-page summary by end of day.

### Sample File

Use: `/labs/sample-data/Industry_Report_2026.pdf` (or any multi-page PDF you have)

### Your Prompt

Ask Claude to:
1. Read the uploaded PDF
2. Create a 1-page executive summary
3. Format: 3-4 paragraphs + 5 key takeaways
4. Highlight actionable insights

**Your prompt:**
```
[Attach PDF first, then write your prompt]






```

**Suggested Prompt Structure:**
```
I've uploaded a 12-page industry report. Create a 1-page executive summary for our leadership team.

FORMAT:
- Overview paragraph (what the report covers)
- Key findings (2-3 paragraphs)
- Top 5 takeaways (bullet points)
- Recommended actions for our company (2-3 specific items)

AUDIENCE: C-suite executives with 5 minutes to read

FOCUS: Competitive threats and market opportunities most relevant to us
```

### Expected Output

Claude analyzes the PDF and creates an artifact with:
- Clean, professional formatting
- Dense with information but scannable
- Action-oriented recommendations
- No fluff or filler

**Validation:**
- [ ] Fits on 1 page
- [ ] 5 bullet-point takeaways
- [ ] 2-3 actionable recommendations
- [ ] Uses professional business language

---

## Bonus Exercise (If Time Allows)

### Create a Process Document

Document a process you do regularly (weekly report, monthly close, etc.) by having Claude interview you.

**Prompt:**
```
I want to document my weekly sales report process so I can delegate it.

Ask me questions to understand the process step-by-step, then create:
1. Process overview
2. Step-by-step checklist
3. Tips and gotchas
4. Sample output template

Start by asking me your first question about what triggers this process.
```

Let Claude interview you, answer its questions, then it will create a comprehensive process document.

---

## Key Takeaways

### What Makes Prompts Effective

✅ **Specific** - Clear goal, not vague requests  
✅ **Contextualized** - Background info Claude needs  
✅ **Formatted** - Specify desired output structure  
✅ **Constrained** - Length, tone, audience  
✅ **Examples** - Show what "good" looks like when possible

### GOLDEN Framework Recap

| Element | What to Include |
|---------|----------------|
| **G**oal | What you want to achieve |
| **O**utput | Format (report, email, list, etc.) |
| **L**ength | How much detail (1 page, 5 bullets, etc.) |
| **D**etails | Context, background, data |
| **E**xamples | Samples of desired output |
| **N**otes | Tone, audience, constraints |

### Artifacts = Professional Outputs

When Claude creates an artifact (📄 icon):
- It's formatted and ready to use
- You can copy/paste directly
- You can edit in-place and iterate
- Perfect for reports, documents, code, data

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Output too generic | Add more DETAILS - Claude needs context |
| Wrong format | Specify OUTPUT format clearly ("create table", "bullet points", etc.) |
| Too long/short | Set LENGTH explicitly ("1 page max", "5 sentences") |
| Not professional enough | Add NOTES about audience and tone |
| Artifact didn't appear | Ask "Create this as an artifact" or "Format this as a document" |

---

## Summary

In this lab, you practiced:

1. **GOLDEN Framework** - Structure for effective prompts
2. **Report Creation** - Turn data into professional documents
3. **Presentation Outlines** - Slide structure with speaker notes
4. **PDF Analysis** - Extract insights and create summaries
5. **Artifacts** - Get copy-paste ready professional outputs

### Next Steps

- Save your best prompts as templates
- Try these techniques on real work tasks
- Proceed to afternoon session: Claude in Excel

---

*© 2026 AIA Copilot | Claude for Business Training*
