# Day 3 Demo Scripts: Claude Code Advanced

**Instructor Reference Only - Do Not Distribute**

---

## Pre-Demo Checklist

- [ ] All Day 2 demos completed
- [ ] Custom commands in `.claude/commands/`
- [ ] Subagents in `.claude/agents/`
- [ ] Hooks in `.claude/hooks/` (with execute permission)
- [ ] A test file with fake secret staged in git
- [ ] MCP configuration ready (if available)

### Quick Verification
```bash
ls -la labs/sample-project/.claude/commands/
ls -la labs/sample-project/.claude/agents/
ls -la labs/sample-project/.claude/hooks/pre-tool/
```

---

## Demo 5: "Custom Commands - Your Personal CLI"

**Duration:** 10 minutes  
**When:** Custom Commands (9:15am)  
**WOW Factor:** ⭐⭐⭐⭐⭐

### Setup
Show the command file first:
```bash
cat .claude/commands/api-doc.md
```

### Script

**SAY:** "I got tired of writing API documentation. So I automated it..."

```bash
claude
```

```
> /help
```

**POINT OUT:** Custom commands appear alongside built-ins.

```
> /api-doc src/routes/users.js
```

**WAIT** - Let Claude generate comprehensive docs.

**SAY:** "Custom commands are templates + arguments. `$ARGUMENTS` is whatever you type after the command. Your team can share these via git."

### Show Another Command

```
> /explain-like-5 src/index.js
```

**SAY:** "Perfect for onboarding juniors. Same code, explained like they're new."

### Emphasize

- Commands are Markdown files with YAML frontmatter
- `$ARGUMENTS` = user input after command
- Commit `.claude/commands/` to share with team
- Great for repetitive tasks: docs, tests, reviews, changelogs

---

## Demo 6: "Subagents - Your AI Team"

**Duration:** 12 minutes  
**When:** Subagents (9:45am)  
**WOW Factor:** ⭐⭐⭐⭐⭐

### Setup
Show the subagent file:
```bash
cat .claude/agents/security-auditor.md
```

**POINT OUT:** `tools: Read, Grep, Glob, Bash(npm audit:*)` - limited tools!

### Script

**SAY:** "What if you had a security expert reviewing every change? Now you do..."

```
> /agents
```

**POINT OUT:** Built-in agents + your custom ones.

```
> @security-auditor audit this codebase
```

**WATCH IT WORK:**
- Runs npm audit
- Searches for secrets
- Finds missing validation
- Reports by severity

**SAY:** "This is a SEPARATE Claude session with LIMITED tools. It can read and search, but it cannot edit. Least-privilege by design."

### Compare with Built-in Agent

```
> @explore how is error handling done in this codebase?
```

**SAY:** "The built-in 'explore' uses Haiku - faster, cheaper. Perfect for quick questions."

### Emphasize

- Subagents = specialists with limited scope
- Tool restrictions for security
- Different models for different costs
- They report back - you stay in control

---

## Demo 7: "Hooks - The Safety Net"

**Duration:** 10 minutes  
**When:** Hooks (10:30am)  
**WOW Factor:** ⭐⭐⭐⭐⭐

### Setup - Stage a Secret
```bash
echo 'const API_KEY = "sk-12345-fake-secret";' > temp-config.js
git add temp-config.js
```

Show the hook:
```bash
cat .claude/hooks/pre-tool/no-secrets.sh
```

### Script

**SAY:** "What if Claude tries to commit a secret? Let's find out..."

```bash
claude
```

```
> Commit the staged changes with message "add config"
```

**WATCH IT BLOCK!**

```
🚨 BLOCKED: Potential secret detected in staged changes!
```

**SAY:** "The hook caught it! Exit code 2 means BLOCK. This runs BEFORE the tool executes. We just built a security gate."

### Clean Up
```bash
git reset temp-config.js
rm temp-config.js
```

### Explain Hook Events

Show the table:
| Event | When | Can Block? |
|-------|------|------------|
| PreToolUse | Before tool runs | Yes (exit 2) |
| PostToolUse | After tool | No |
| SessionStart | Session begins | No |
| UserPromptSubmit | User types | Yes |

### Show Audit Log (if time)

```bash
cat .claude/audit.log
```

**SAY:** "PostToolUse hooks log everything. Compliance teams love this."

---

## Demo 8: "MCP Live Integration"

**Duration:** 8 minutes  
**When:** MCP section (2:30pm)  
**WOW Factor:** ⭐⭐⭐⭐

### Setup
Ensure GitHub MCP is configured (or use mock).

### Script

**SAY:** "MCP connects Claude to your actual tools..."

```
> What issues are assigned to me on GitHub?
```

**WATCH:** MCP calls GitHub API.

```
> Summarize the top 3 issues and their priority
```

**SAY:** "Claude didn't open a browser. It called the GitHub API through MCP. Three primitives: Tools (actions), Resources (data), Prompts (templates). All standardized."

### Show MCP Config (if possible)
```bash
cat .mcp.json
```

**SAY:** "Your internal systems can expose the same interface. Ticketing, CRM, inventory - all accessible via natural language."

### Fallback if MCP Not Available

**SAY:** "In your environments, you'll configure MCP servers for your tools. Think: Jira, Confluence, internal APIs. Same pattern."

Show the sample-mcp-server:
```bash
cat labs/sample-mcp-server/server.py
```

---

## Advanced Demo: Multi-Claude Workflow

**Duration:** 5 minutes (bonus)  
**When:** Advanced Workflows (3:15pm)

### Script

**SAY:** "Enterprise teams run multiple Claude sessions..."

```
> Write a new endpoint for updating user preferences
```

**In a second terminal:**
```bash
claude
```

```
> @security-auditor review recent changes
```

**SAY:** "One Claude writes, another reviews. Parallel development. Different perspectives."

---

## Recovery Phrases for Day 3

If hook doesn't fire:
- "Let's check the permissions... hooks need execute bits"
- `chmod +x .claude/hooks/pre-tool/*.sh`

If subagent seems slow:
- "Subagents start fresh - no shared context. That's the trade-off for isolation."

If MCP fails:
- "MCP servers need to be running. In production, you'd have these as services."

---

## Key Takeaways to Emphasize

1. **Custom Commands** - Your team's expertise, templated
2. **Subagents** - Specialists with limited scope (security!)
3. **Hooks** - Guardrails that actually prevent mistakes
4. **MCP** - Enterprise integration standard

### The Progression
- Day 2: Individual productivity
- Day 3: Team patterns and enterprise safety

**SAY at end:** "You're not just using Claude Code. You're building systems that make Claude Code safe, consistent, and tailored to your organization."

---

## Demo Files Quick Reference

```
.claude/
├── commands/
│   ├── api-doc.md        ← Documentation generator
│   ├── explain-like-5.md ← Junior-friendly explainer
│   ├── test-this.md      ← Test generator
│   └── refactor.md       ← Refactoring suggestions
├── agents/
│   ├── security-auditor.md ← Security focused
│   ├── doc-checker.md      ← Documentation quality
│   └── dep-analyzer.md     ← Dependency health
└── hooks/
    ├── pre-tool/
    │   ├── no-secrets.sh   ← Block secret commits
    │   └── safe-commands.sh ← Block dangerous commands
    └── post-tool/
        ├── audit-log.js    ← Audit trail
        └── change-counter.js ← Change warnings
```
