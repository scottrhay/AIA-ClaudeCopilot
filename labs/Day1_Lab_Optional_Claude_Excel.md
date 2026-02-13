# Day 1 Lab: Claude in Excel (OPTIONAL)
**Duration:** 30-45 minutes  
**Prerequisites:** Excel desktop or web, Claude Pro/Max/Team/Enterprise account  
**Purpose:** Hands-on practice with Claude in Excel add-in using realistic business scenarios

---

## Before You Start

### Installation (5 minutes)

If you haven't installed Claude in Excel yet:

1. Open Excel (desktop or web)
2. Click **Insert > Add-ins** (or **Home > Add-ins**)
3. Search for "Claude by Anthropic"
4. Click **Install**
5. Claude sidebar appears — sign in with your Claude account
6. **Keyboard shortcut:** Ctrl+Alt+C (Windows) / Ctrl+Option+C (Mac)

**License requirement:** Claude Pro ($20/mo), Max ($100-200/mo), Team ($30/user/mo), or Enterprise

---

## Lab Files

Download the sample files for this lab:
- **Scenario 1:** `quarterly_sales_data.xlsx` (Sales analysis)
- **Scenario 2:** `budget_vs_actual.xlsx` (Variance analysis)
- **Scenario 3:** `broken_financial_model.xlsx` (Debugging)
- **Scenario 4:** Blank Excel file (Template building)

Files provided in: `/labs/sample-data/claude-excel/`

---

## Scenario 1: Sales Analysis & Insights (10 minutes)

**File:** `quarterly_sales_data.xlsx`

**Context:** You're a regional sales manager reviewing Q1-Q4 performance across four regions (North, South, East, West) with three product categories (Hardware, Software, Services).

### Your Tasks

**Task 1A: Understand the Data (2 min)**

Open the file and open Claude sidebar (Ctrl+Alt+C).

Ask Claude:
```
What are the key metrics in this workbook? 
Provide an overview of the data structure.
```

**What to observe:**
- Claude reads ALL tabs, not just the active sheet
- It identifies columns, data ranges, and relationships
- Cell-level citations are clickable (click to navigate)

---

**Task 1B: Trend Analysis (3 min)**

Ask Claude:
```
What trends do you see in sales performance across 
regions and quarters? Which region and product 
category should I focus on?
```

Then ask:
```
Why did West region Software sales drop in Q3? 
Reference the specific cells in your answer.
```

**What to observe:**
- Claude provides cell references (e.g., "Cell E15 shows...")
- Click the reference to jump directly to that cell
- Claude interprets patterns, not just summarizes numbers

---

**Task 1C: Formula Creation (3 min)**

Ask Claude:
```
Add a new column calculating QoQ (quarter-over-quarter) 
growth percentage for each region. Show the formula.
```

**What to observe:**
- Claude provides the formula AND explains how it works
- It suggests where to place the formula
- Confirmation pop-up appears before changes are made

---

**Task 1D: Visualization Recommendation (2 min)**

Ask Claude:
```
Suggest 3 ways to visualize this sales data. 
Which would be most effective for an executive briefing?
```

**What to observe:**
- Claude understands the audience (executives)
- Recommendations are specific (chart types, data ranges)

---

## Scenario 2: Budget Variance Analysis (10 minutes)

**File:** `budget_vs_actual.xlsx`

**Context:** You're a finance analyst preparing a monthly variance report. The spreadsheet has budget, actual, and variance columns for 15 expense categories.

### Your Tasks

**Task 2A: Identify Problem Areas (3 min)**

Ask Claude:
```
Which expense categories have variances greater than 10%? 
Explain what this means for our budget performance.
```

Then:
```
Create a formula to flag any variance over $5,000 OR 
over 10% of budget. Apply it to the Variance column.
```

**What to observe:**
- Claude understands both absolute ($) and relative (%) thresholds
- Provides an IF/OR formula that meets both criteria
- You must approve changes (confirmation pop-up)

---

**Task 2B: Root Cause Exploration (4 min)**

Ask Claude:
```
For the three largest negative variances, suggest possible 
reasons and what questions I should ask department heads.
```

**What to observe:**
- Claude analyzes business context, not just numbers
- Provides actionable follow-up questions
- Helps you prepare for stakeholder conversations

---

**Task 2C: Executive Summary (3 min)**

Ask Claude:
```
Draft a 3-bullet executive summary of this variance 
report for the CFO. Focus on the most critical issues.
```

**What to observe:**
- Claude synthesizes findings into leadership-ready language
- Prioritizes by impact
- Concise, decision-focused

---

## Scenario 3: Debugging a Broken Model (10 minutes)

**File:** `broken_financial_model.xlsx`

**Context:** You've inherited a financial model from a former analyst. It has multiple errors and you need to understand and fix them quickly.

### Your Tasks

**Task 3A: Error Detection (3 min)**

Open the file. You'll see several #REF!, #VALUE!, and #NUM! errors.

Ask Claude:
```
Find all errors in this workbook and explain what's 
causing each one. Prioritize by severity.
```

**What to observe:**
- Claude identifies errors across multiple tabs
- Explains the root cause (not just "there's a #REF! error")
- Traces formula dependencies

---

**Task 3B: Fix Critical Errors (4 min)**

Ask Claude:
```
Fix the #REF! errors in the Revenue tab. Explain 
what you're changing and why.
```

**What to observe:**
- Claude highlights EVERY cell it changes
- Provides explanation for each fix
- Preserves formula dependencies
- You can undo with Ctrl+Z if needed

---

**Task 3C: Model Validation (3 min)**

After fixes, ask Claude:
```
Are there any remaining errors? Also check for circular 
references and potential logic issues in the formulas.
```

**What to observe:**
- Claude checks for non-obvious issues (circular refs, logic errors)
- Proactive about model integrity

---

## Scenario 4: Build a Template from Scratch (10 minutes)

**File:** Blank Excel file

**Context:** You need a monthly expense tracking template for your team. Instead of building it manually, let Claude create it.

### Your Tasks

**Task 4A: Define Requirements (2 min)**

Open a blank Excel file. Ask Claude:
```
Create a monthly expense tracking template with these columns:
- Date
- Category (dropdown: Travel, Meals, Supplies, Software, Other)
- Description
- Amount
- Receipt? (Yes/No dropdown)
- Status (dropdown: Pending, Approved, Reimbursed)

Also add a summary section at the top showing:
- Total expenses
- Total by category
- Pending vs. approved count
```

**What to observe:**
- Claude builds structure, formulas, and dropdowns
- Creates summary section with formulas
- Applies basic formatting

---

**Task 4B: Add Formatting (3 min)**

Ask Claude:
```
Apply conditional formatting:
- Highlight expenses over $500 in yellow
- Highlight "Pending" status in orange
- Make the summary section header bold with light blue background
```

**What to observe:**
- Opus 4.6 model (select from dropdown) has stronger formatting capabilities
- Claude applies rules and explains what it did

---

**Task 4C: Data Validation (2 min)**

Ask Claude:
```
Add data validation so Amount can only accept positive numbers 
and Date must be in the current month.
```

**What to observe:**
- Claude sets Excel data validation rules
- Explains the constraints applied

---

**Task 4D: Test & Refine (3 min)**

Add 5 sample expense entries manually, then ask Claude:
```
Review my sample data and suggest improvements to the template 
based on how I'm using it.
```

**What to observe:**
- Claude analyzes your usage pattern
- Suggests practical improvements (additional columns, formulas, etc.)

---

## Security Exercise (5 minutes) ⚠️ IMPORTANT

**Context:** Prompt injection is a real risk with Claude in Excel. Malicious instructions can be hidden in cells, formulas, or comments.

### Your Task: Understand the Risk

**Task 5A: Read the Warning (2 min)**

Ask Claude:
```
What is prompt injection in spreadsheets and why should I be careful?
```

**What to observe:**
- Claude explains the risk
- Emphasizes the confirmation pop-up as protection

---

**Task 5B: Safe Practices (3 min)**

Ask Claude:
```
What are 5 best practices for using Claude in Excel safely, 
especially with spreadsheets from external sources?
```

**Key takeaways to remember:**
1. ✅ **Always approve changes** — read the confirmation pop-up carefully
2. ✅ **Use with trusted spreadsheets only** — avoid downloaded templates, vendor files
3. ✅ **Undo is your friend** — Ctrl+Z works on all Claude changes
4. ✅ **Verify critical outputs** — especially financial calculations
5. ✅ **Don't share sensitive data** — use dummy data for testing

---

## Reflection & Debrief (5 minutes)

### Discussion Questions

1. **What surprised you?**
   - What did Claude do that impressed you?
   - What did it struggle with?

2. **Where would you use this in your actual work?**
   - What repetitive Excel tasks could Claude handle?
   - What's one workflow you'd automate this week?

3. **What concerns do you have?**
   - What makes you hesitant to trust Claude's output?
   - How would you verify its work?

4. **Claude vs. Copilot in Excel**
   - When would you use Claude instead of Copilot?
   - When would Copilot be better?

### Decision Guide: When to Use Claude in Excel

| Task | Use Claude | Use Copilot | Use Manual |
|------|-----------|------------|-----------|
| **Explain complex formula chains** | ✅ | ⚠️ | ❌ |
| **Debug errors with root cause** | ✅ | ⚠️ | ❌ |
| **Build financial models** | ✅ | ⚠️ | ✅ |
| **Create PivotTables quickly** | ✅ (new) | ✅ | ⚠️ |
| **Python in Excel** | ❌ | ✅ | ❌ |
| **VBA macros** | ❌ | ⚠️ | ✅ |
| **Audit-critical calculations** | ⚠️ | ⚠️ | ✅ |
| **Untrusted spreadsheets** | ❌ | ❌ | ✅ |

**Legend:**
- ✅ Recommended
- ⚠️ Use with caution
- ❌ Not supported or not recommended

---

## Key Takeaways

### What Claude in Excel Does Well
✅ **Cell-level citations** — clickable references that navigate you to source data  
✅ **Change tracking** — highlights and explains every modification  
✅ **Whole workbook understanding** — reads all tabs, formulas, dependencies  
✅ **Formula debugging** — traces errors to root cause  
✅ **Financial modeling focus** — purpose-built for analysis  

### Current Limitations (as of Feb 2026)
❌ **No VBA support** — can open .xlsm but can't modify/execute macros  
❌ **No Power Query/Power Pivot**  
❌ **Chat history not saved** — fresh conversation each session  
⚠️ **Prompt injection risk** — never use with untrusted spreadsheets  

### Best Practices
1. **Always verify** — Claude assists, you validate
2. **Approve carefully** — read confirmation pop-ups
3. **Use with trusted data only** — prompt injection is real
4. **Iterate** — refine outputs with follow-up prompts
5. **Combine tools** — Claude + Copilot + manual work

---

## Bonus Challenges (If Time Permits)

### Challenge 1: Multi-Sheet Analysis
Create a workbook with 3 tabs (Sales, Expenses, Profit). Ask Claude to:
- Summarize relationships between tabs
- Create a dashboard tab that pulls from all three

### Challenge 2: Scenario Planning
Using the budget file, ask Claude to:
- Increase all categories by 3% for next year's budget
- Show the impact on total budget
- Create a side-by-side comparison

### Challenge 3: Error-Free Formula Audit
Take any complex spreadsheet you have and ask Claude to:
- Audit all formulas for potential errors
- Flag any cells that might break if data changes
- Suggest more robust alternatives

---

## Lab Completion Checklist

By the end of this lab, you should be able to:

- [ ] Install and open Claude in Excel (Ctrl+Alt+C)
- [ ] Ask Claude to analyze spreadsheet data
- [ ] Use cell-level citations to navigate
- [ ] Create and debug formulas with Claude's help
- [ ] Build a template from natural language requirements
- [ ] Apply conditional formatting and data validation
- [ ] Understand prompt injection risks and safe practices
- [ ] Decide when to use Claude vs. Copilot vs. manual work
- [ ] Verify Claude's outputs before trusting them

---

## Additional Resources

**Official Documentation:**
- Claude in Excel Help: https://support.claude.com/en/articles/12650343-using-claude-in-excel
- Claude in Excel Landing Page: https://claude.com/claude-in-excel

**Installation Guides:**
- AlphaTechFinance 2026 Guide: https://alphatechfinance.com/productivity-app/claude-for-excel-2026-guide/
- SumProduct Setup Guide: https://sumproduct.com/blog/ai-blog-claude-for-excel-basics-setup-and-licence-requirements/

**Microsoft Marketplace:**
- Claude Add-in: https://marketplace.microsoft.com/en-us/product/saas/wa200009404

---

## Instructor Notes

**Time Allocation:**
- Scenario 1 (Sales): 10 min
- Scenario 2 (Budget): 10 min
- Scenario 3 (Debugging): 10 min
- Scenario 4 (Template): 10 min
- Security: 5 min
- Debrief: 5 min
- **Total:** 50 minutes (flexible based on class pace)

**Tips for Success:**
- Students can skip scenarios based on interest (e.g., finance-focused users prioritize Scenarios 2-3)
- Demo Scenario 1 live if students struggle with installation
- Emphasize the security section — prompt injection is a real risk
- Have backup sample files ready in case downloads fail
- Encourage sharing: "What did Claude do for you that was surprising?"

**Common Issues:**
- "Claude sidebar won't open" → Check add-in is installed and signed in
- "Claude isn't understanding my prompt" → Be more specific, include column names
- "Changes aren't applying" → Check if confirmation pop-up was approved
- "I don't have Pro/Max/Team/Enterprise" → Use demo/instructor's account for lab

**Model Selection:**
- Sonnet 4.5 (default) — Faster, good for most tasks
- Opus 4.6 — Better for complex formatting, deeper reasoning
- Switch models via dropdown in Claude sidebar

---

*© 2026 AIA Copilot*
