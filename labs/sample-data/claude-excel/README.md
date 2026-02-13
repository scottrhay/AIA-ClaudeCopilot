# Sample Data for Claude in Excel Lab

This folder contains sample Excel files for the optional Day 1 lab exercise.

## Files Needed

### Scenario 1: Sales Analysis
**File:** `quarterly_sales_data.xlsx`

**Structure:**
- **Columns:** Date, Region, Product Category, Sales Amount, Units Sold
- **Data:** 12 months of sales data (Q1-Q4)
- **Regions:** North, South, East, West
- **Product Categories:** Hardware, Software, Services
- **Rows:** ~100 entries (realistic sample size)

**Key features for lab:**
- Trends across quarters (Q3 dip in West region Software)
- Regional performance variation
- Product mix differences by region

---

### Scenario 2: Variance Analysis
**File:** `budget_vs_actual.xlsx`

**Structure:**
- **Columns:** Expense Category, Budget, Actual, Variance ($), Variance (%)
- **Categories:** 
  - Salaries, Benefits, Travel, Marketing, Software, Equipment, 
  - Supplies, Rent, Utilities, Insurance, Training, Consulting, 
  - Meals & Entertainment, Phone/Internet, Miscellaneous
- **Rows:** 15 expense categories + totals row

**Key features for lab:**
- 3-5 categories with >10% variance
- Mix of positive and negative variances
- Some large absolute dollar variances
- Some large percentage variances on small budgets

---

### Scenario 3: Broken Financial Model
**File:** `broken_financial_model.xlsx`

**Structure:**
- **Tabs:** Revenue, Expenses, Profit, Summary
- **Intentional errors:**
  - 2-3 #REF! errors (broken references when rows/columns deleted)
  - 1-2 #VALUE! errors (text in numeric formula)
  - 1 #NUM! error (invalid numeric operation)
  - 1 circular reference
  - 1-2 logic errors (incorrect formula but no Excel error)

**Key features for lab:**
- Errors spread across multiple tabs
- Some obvious, some subtle
- Requires understanding of formula dependencies
- Tests Claude's debugging capabilities

---

### Scenario 4: Template Building
**File:** Not needed (students start with blank Excel file)

Students will ask Claude to build from scratch:
- Monthly expense tracking template
- Columns: Date, Category, Description, Amount, Receipt?, Status
- Dropdowns for Category and Status
- Summary section with formulas
- Conditional formatting
- Data validation

---

## File Creation Instructions

### Option 1: Quick Creation with Claude
Use Claude (via claude.ai) to generate these files:

**Prompt for Scenario 1:**
```
Create realistic sample data for an Excel file with these specs:
- 100 rows of quarterly sales data (Q1-Q4 2025)
- Columns: Date, Region (North/South/East/West), Product Category 
  (Hardware/Software/Services), Sales Amount, Units Sold
- Make West region Software sales noticeably drop in Q3
- Include realistic sales amounts ($1K-$50K range)
- Export as CSV that I can open in Excel
```

**Prompt for Scenario 2:**
```
Create a budget vs. actual variance report with:
- 15 expense categories (Salaries, Benefits, Travel, etc.)
- Columns: Category, Budget, Actual, Variance ($), Variance (%)
- 3 categories should have >10% variance
- 2 categories should have >$5,000 variance
- Mix of positive and negative variances
- Export as CSV
```

**Prompt for Scenario 3:**
```
Create a 4-tab financial model (Revenue, Expenses, Profit, Summary) 
with intentional errors:
- 2 #REF! errors from broken references
- 1 #VALUE! error from text in numeric formula  
- 1 #NUM! error
- 1 circular reference
- Label which cells have errors in comments
```

### Option 2: Manual Creation
Use the specifications above to create files manually in Excel.

---

## Validation Checklist

Before using in training:

**Scenario 1:**
- [ ] 100+ rows of data
- [ ] All 4 regions present
- [ ] All 3 product categories present
- [ ] Q3 dip visible in West Software sales
- [ ] Realistic sales amounts

**Scenario 2:**
- [ ] 15 expense categories
- [ ] Budget and Actual columns populated
- [ ] Variance formulas working
- [ ] At least 3 variances >10%
- [ ] At least 2 variances >$5,000

**Scenario 3:**
- [ ] 4 tabs (Revenue, Expenses, Profit, Summary)
- [ ] At least 5 different error types
- [ ] Errors span multiple tabs
- [ ] Some errors obvious, some subtle

---

## Backup Plan

If sample files aren't available for lab:
1. **Demo only:** Instructor shows on their files
2. **Student files:** Students use their own work spreadsheets (less ideal for consistency)
3. **Quick build:** Students do Scenario 4 first (build template from scratch), then use that for practice

---

*Note: These files should be created before Day 1 training delivery.*
