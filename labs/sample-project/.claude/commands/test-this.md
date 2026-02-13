---
description: Generate Jest tests for a function or file
---

Generate comprehensive Jest tests for $ARGUMENTS.

## Testing Strategy

### 1. Happy Path Tests
Test normal, expected inputs:
- Valid data returns correct output
- All required fields present
- Expected format is returned

### 2. Edge Cases
Test boundary conditions:
- Empty strings, arrays, objects
- Minimum and maximum values
- Single-element collections
- Unicode and special characters

### 3. Error Cases
Test what should fail:
- Missing required parameters
- Invalid input types
- Out of range values
- Malformed data

## Output Format

Generate a complete Jest test file with:

```javascript
const { functionName } = require('./path');

describe('FunctionName', () => {
  describe('Happy Path', () => {
    it('should return correct result with valid input', () => {
      // Arrange
      // Act
      // Assert
    });
  });

  describe('Edge Cases', () => {
    it('should handle empty input', () => {
      // ...
    });
  });

  describe('Error Cases', () => {
    it('should throw error for invalid input', () => {
      // ...
    });
  });
});
```

## Requirements

- Use `describe` blocks to group related tests
- Use "should..." format for test names
- Include Arrange-Act-Assert pattern
- Mock external dependencies where needed
- Follow any existing test patterns in the project
