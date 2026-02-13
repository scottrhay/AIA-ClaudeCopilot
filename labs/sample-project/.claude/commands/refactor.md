---
description: Suggest refactoring improvements for code
---

Analyze $ARGUMENTS and suggest refactoring improvements.

## Analysis Checklist

### Code Smells
- [ ] Long functions (>20 lines)
- [ ] Deep nesting (>3 levels)
- [ ] Duplicate code
- [ ] Magic numbers/strings
- [ ] Long parameter lists
- [ ] Dead code

### Improvements
- [ ] Extract method opportunities
- [ ] Better variable/function naming
- [ ] Error handling improvements
- [ ] Performance optimizations
- [ ] Simplified conditionals

### Modern JavaScript
- [ ] ES6+ syntax (arrow functions, destructuring)
- [ ] async/await instead of callbacks
- [ ] Template literals
- [ ] Optional chaining (?.)
- [ ] Nullish coalescing (??)

## Report Format

For each suggestion, provide:

### 🔴 High Priority (fix now)

**Issue:** What's wrong
**Location:** File:line
**Why it matters:** Impact on maintainability/bugs/performance
**Fix:**
```javascript
// Before
oldCode()

// After
betterCode()
```

### 🟡 Medium Priority (fix soon)

...

### 🟢 Low Priority (nice to have)

...

---

Prioritize by impact. Be specific and actionable. Don't overwhelm with nitpicks.
