# Day 2 Demo Scripts: Claude Code Basics

**Instructor Reference Only - Do Not Distribute**

---

## Pre-Demo Checklist

- [ ] Claude Code installed and authenticated
- [ ] Sample project cloned: `labs/sample-project`
- [ ] npm dependencies installed: `npm install`
- [ ] Git configured with credential helper
- [ ] VS Code or editor ready to show diffs
- [ ] Terminal font large enough for projection

---

## Demo 1: "The Magic Moment" - First Encounter

**Duration:** 5 minutes  
**When:** After Claude Code install (9:15am)  
**WOW Factor:** ⭐⭐⭐⭐⭐

### Setup
```bash
cd labs/sample-project
claude
```

### Script

**SAY:** "Let me show you something that changed how I work..."

```
> What is this project and how is it structured?
```

**PAUSE** - Let Claude work. Don't talk over it.

**SAY:** "Notice what just happened. Claude read 5 files. I didn't tell it which ones. It's not searching keywords - it's *understanding* code structure."

```
> What security vulnerabilities do you see in this codebase?
```

**PAUSE** - Let it find the missing input validation.

**SAY:** "In 30 seconds, Claude found what took my last manual code review 2 hours. This is the agentic loop: Read → Think → Act → Repeat."

### If Something Goes Wrong
- Network slow: "Real-world network conditions! Watch the thinking..."
- Wrong answer: "Claude isn't magic - it's probability. Let's ask differently..."

---

## Demo 2: "The CLAUDE.md Transformation"

**Duration:** 7 minutes  
**When:** CLAUDE.md section (10:15am)  
**WOW Factor:** ⭐⭐⭐⭐

### Setup
Ensure NO CLAUDE.md exists in sample-project. Remove if present:
```bash
rm CLAUDE.md 2>/dev/null
```

### Script Part 1 - Without CLAUDE.md

```bash
claude
```

**SAY:** "Watch what happens without project context..."

```
> Add a new endpoint to delete a user by ID
```

**OBSERVE:** Claude might use:
- `var` instead of `const`
- Callbacks instead of async/await
- Missing error handling

**SAY:** "Works, but... it's not following our team's standards."

### Script Part 2 - With CLAUDE.md

```
> /quit
```

**Create CLAUDE.md (show this on screen):**
```markdown
# Sample API Project

## Commands
- npm run dev: Start dev server with hot reload
- npm test: Run Jest test suite

## Code Style
- Always use async/await, never callbacks
- Use const/let, never var
- All endpoints must return JSON with status codes
- Include try/catch error handling on ALL route handlers
- Use descriptive function names

## Patterns
- Routes in src/routes/
- Models in src/models/
- Tests mirror source structure in tests/
```

**SAY:** "Now let's give Claude our team's knowledge..."

```bash
claude
```

```
> Add a new endpoint to delete a user by ID
```

**OBSERVE:** Now Claude:
- Uses async/await
- Uses const
- Adds try/catch
- Returns proper status codes

**SAY:** "Same question. Completely different quality. CLAUDE.md is your team's coding standards, enforced by AI."

---

## Demo 3: "Git Workflow Magic"

**Duration:** 8 minutes  
**When:** Git Integration (2:30pm)  
**WOW Factor:** ⭐⭐⭐⭐⭐

### Setup
Ensure gh CLI is installed and authenticated:
```bash
gh auth status
```

### Script

**SAY:** "Let's go from bug report to merged PR in 2 minutes..."

```
> There's a bug where creating a user with an empty username succeeds.
> Fix it, write a test, commit it, and create a PR.
```

**WATCH THE MAGIC:**
1. Claude reads the route
2. Adds validation
3. Creates test
4. Runs `npm test`
5. Commits with conventional message
6. Creates GitHub PR

**SAY:** "That was: diagnosis, fix, test, commit, PR. One prompt. Two minutes."

### Show the PR (if time)
```bash
gh pr view --web
```

**SAY:** "PR description includes what changed AND why. This is senior-developer-level context."

---

## Demo 4: "Thinking Modes Live"

**Duration:** 5 minutes  
**When:** Plan Mode section (1:45pm)  
**WOW Factor:** ⭐⭐⭐

### Script

**SAY:** "Same problem, different thinking depths..."

```
> How should I add rate limiting to this API?
```

**OBSERVE:** Quick, surface-level answer.

```
> think harder about rate limiting for this API
```

**OBSERVE:** Deeper analysis - algorithms, trade-offs.

```
> ultrathink about a production-ready rate limiting strategy
```

**OBSERVE:** Comprehensive - distributed systems, Redis, tokens, sliding windows.

**SAY:** "Same question, three levels:
- 'think' = quick analysis
- 'think harder' = medium complexity  
- 'ultrathink' = maximum reasoning

Match the thinking to the problem. Ultrathink costs more tokens but finds issues you didn't know existed."

### Talking Points
- Token cost increases with thinking level
- Use "think" for simple refactors
- Use "ultrathink" for architecture decisions

---

## Backup Demos (if time permits)

### @ Mentions Demo
```
> @src/routes/users.js add rate limiting to the POST endpoint
```
Show how @ helps Claude focus.

### /compact Demo
```
> /compact
```
Explain context management.

### /review Demo
```
> /review
```
Show built-in code review.

---

## Recovery Phrases

If demo fails:
- "This is actually a great teaching moment about iteration..."
- "Claude isn't deterministic - let's see what happens with a different prompt..."
- "In production, this is where you'd refine your request..."

If network is slow:
- "Real enterprise networks! This is why we run Claude locally when possible..."
- "While this loads, any questions about what we covered?"

---

## Key Takeaways to Emphasize

1. **Agentic Loop** - Read → Think → Act → Repeat
2. **Context is King** - CLAUDE.md changes everything
3. **One Prompt Workflows** - Bug to PR in minutes
4. **Thinking Scales** - Match depth to problem complexity
