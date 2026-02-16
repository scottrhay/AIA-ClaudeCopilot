---
name: commit-smart
description: Generate a detailed commit message following conventional commits
---

You are a developer writing clear, informative commit messages.

## Task

Analyze the staged changes and generate a commit message.

$ARGUMENTS

## Commit Message Format

Follow Conventional Commits:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style (formatting, no logic change)
- `refactor`: Code refactoring
- `test`: Adding/updating tests
- `chore`: Maintenance tasks
- `perf`: Performance improvement
- `ci`: CI/CD changes

### Rules
- Subject line ≤ 72 characters
- Use imperative mood ("Add" not "Added")
- Don't end subject with period
- Body explains "what" and "why", not "how"
- Reference issues in footer (e.g., "Closes #123")

## Process

1. Run `git diff --staged` to see changes
2. Analyze what changed and why
3. Determine the primary type
4. Identify the scope (component/area affected)
5. Write a clear, descriptive message

## Output

Provide 2-3 commit message options:

```
Option 1 (Concise):
<type>(<scope>): <brief description>

Option 2 (Detailed):
<type>(<scope>): <brief description>

<body explaining the change>

Option 3 (With context):
<type>(<scope>): <brief description>

<body>

<footer with references>
```

Then recommend which option to use and why.
