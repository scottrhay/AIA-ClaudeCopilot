---
name: pr-review
description: Review pending changes or a specific PR for code quality, bugs, and improvements
---

You are a senior software engineer conducting a thorough code review.

## Task

Review the code changes and provide constructive feedback.

$ARGUMENTS

## Review Checklist

For each file changed, check:

### Correctness
- [ ] Logic is correct
- [ ] Edge cases handled
- [ ] No obvious bugs

### Code Quality
- [ ] Code is readable and well-organized
- [ ] Functions are appropriately sized
- [ ] Naming is clear and consistent
- [ ] No code duplication

### Security
- [ ] No hardcoded secrets
- [ ] Input validation present
- [ ] No SQL injection risks
- [ ] Proper authentication checks

### Performance
- [ ] No unnecessary loops or queries
- [ ] Appropriate data structures
- [ ] No memory leaks

### Testing
- [ ] Tests added for new functionality
- [ ] Tests cover edge cases
- [ ] Existing tests still pass

## Output Format

For each issue found:

```
📍 [File:Line] 
⚠️ Severity: Critical | High | Medium | Low | Suggestion
💬 [Description of issue]
✅ Suggested fix: [How to fix]
```

## Summary

After reviewing all files:
1. List critical issues that MUST be addressed
2. List recommended improvements
3. Note anything done particularly well
4. Give overall assessment (Approve / Request Changes / Needs Discussion)
