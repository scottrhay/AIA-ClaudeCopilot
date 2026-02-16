# Custom Commands for Claude Code

Reusable slash commands that extend Claude Code's capabilities.

## Installation

Copy any `.md` file to your commands directory:

**Project-level (recommended):**
```bash
mkdir -p .claude/commands
cp pr-review.md .claude/commands/
```

**User-level (global):**
```bash
cp pr-review.md ~/.claude/commands/
```

After installation, use with `/command-name` in Claude Code.

## Available Commands

| Command | Purpose | Requires |
|---------|---------|----------|
| `pr-review` | Review code changes | Git repo |
| `test-generator` | Generate tests for file | Test framework |
| `refactor` | Refactor with explanation | - |
| `security-scan` | Security vulnerability check | - |
| `docs-update` | Update documentation | - |
| `commit-smart` | Better commit messages | Git repo |

## Command Structure

```markdown
---
name: command-name
description: What the command does (shown in /help)
---

You are [role description].

Your task: [what to do]

$ARGUMENTS

Steps:
1. [step 1]
2. [step 2]
...
```

## Creating Your Own

1. Create a `.md` file in `.claude/commands/`
2. Add frontmatter with `name` and `description`
3. Write the prompt Claude should follow
4. Use `$ARGUMENTS` to pass parameters

### Example

```markdown
---
name: explain-code
description: Explain selected code to a junior developer
---

Explain the following code as if teaching a junior developer.

$ARGUMENTS

Include:
- What the code does (high level)
- Key concepts used
- Potential gotchas
- When you'd use this pattern
```

Usage: `/explain-code @src/auth/middleware.js`

## Tips

- Keep commands focused (one task per command)
- Include output format expectations
- Test with various inputs
- Document required context/files
