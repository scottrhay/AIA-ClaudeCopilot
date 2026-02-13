# Claude AI Training — Complete Course Outline

**4-Day Comprehensive Training Program**  
From business fundamentals to advanced AI agent development.

© 2026 AIA Copilot

---

## Day 1: Claude for Business (7.5 hours)

**Audience:** Business users, managers, non-technical professionals  
**Format:** Instructor-led with 2 hands-on labs  
**Prerequisites:** None

### Morning Session (3.5 hours)

**Module 1: Claude Landscape (30 min)**
- Claude model family (Haiku, Sonnet, Opus)
- When to use each model
- Extended Thinking mode
- What makes Claude different
- Claude ecosystem overview
- Current capabilities (web search, memory, real-time data)

**Module 2: Interface & Projects (45 min)**
- Claude.ai interface tour (comprehensive UI walkthrough)
- Voice Mode deep dive (3-5× productivity boost)
- Settings & Personal Preferences (global context)
- Claude Desktop App: Autonomous features (Windows Preview)
- Projects: Custom instructions and knowledge bases
- Creating and managing Projects
- Team collaboration

**Break (15 min)**

**Module 3: Prompt Engineering (45 min)**
- What is a prompt?
- The GOLDEN framework (Goal, Output, Length, Details, Examples, Notes)
- Common prompting mistakes
- Iterating on results
- Pro tips and real examples
- Prompting patterns by role
- When NOT to use AI (Frontier Recognition)

**Module 4: Lab 1 - Practical Prompting (45 min)**
- GOLDEN framework practice
- Create professional reports from data
- Generate PowerPoint outlines with speaker notes
- Analyze PDFs and create executive summaries
- **Deliverable:** 4+ professional documents students can use at work

### Afternoon Session (4 hours)

**Module 5: Claude in Excel (45 min)**
- What is Claude in Excel
- Installation walkthrough
- Three main use cases (formulas, data analysis, financial modeling)
- Formula assistance demo
- Data analysis demo
- Best practices
- When to use Claude.ai vs Claude in Excel

**Module 6: Artifacts & Files (30 min)**
- What are artifacts
- Working with generated content (view, edit, download)
- Common artifact use cases
- File upload capabilities
- Analyzing uploaded documents
- Vision capabilities (images, charts, screenshots)

**Break (15 min)**

**Module 7: Lab 2 - Document Creation Workshop (45 min)**
- Email A/B testing (3 versions for campaign)
- PDF → Executive summary for CEO
- CSV data → PowerPoint deck outline
- Claude in Excel formula assistance
- **Deliverable:** 7-8 professional outputs ready for work use
- **Bonus:** Practice iterating on artifacts in place

**Module 8: Integrations & Workflows (30 min)**
- GitHub and Google Docs integrations
- Role-specific workflows (Marketing, Sales)
- Security & privacy (SOC 2, HIPAA, GDPR)

**Module 9: Wrap-up & Practice (45 min)**
- Success pattern: Iterate to Great (70% → 95% → 100%)
- The 6 Success Skills (beyond prompting)
- Key takeaways
- Resources and practice assignment
- Q&A

**Key Differentiators:**
- Voice Mode comprehensive coverage (most courses skip this)
- Claude Desktop autonomous features (brand new Windows Preview)
- Personal Preferences deep dive (underused feature)
- Real document creation focus (not just theory)
- Honest about limitations (builds credibility)
- Decision frameworks (when to use what)

---

## Day 2: Claude Code Fundamentals (7-8 hours)

**Audience:** Developers, technical leads, DevOps engineers  
**Format:** Technical hands-on training with live coding  
**Prerequisites:** Programming experience, command line comfort, Git knowledge

### Morning Session (3.5-4 hours)

**Module 1: Installation & Setup (30 min)**
- System requirements
- Installation process (npm, standalone)
- Initial configuration
- Verifying installation
- Model selection and API keys
- First command walkthrough

**Module 2: The Agentic Loop (45 min)**
*THE core concept — how Claude Code actually works*
- The five-stage cycle: Read → Analyze → Plan → Execute → Verify
- How Claude Code differs from chat interfaces
- Autonomous vs. supervised modes
- Tool use and file operations under the hood
- When the loop breaks and how to recover
- Demo: Watching the agentic loop in action
- **This is the foundation for everything else**

**Module 3: CLAUDE.md Configuration (30 min)**
- What is CLAUDE.md and why it matters
- Project instructions and context
- Team settings and style guides
- Model and tool preferences
- Configuring for different project types
- Best practices for team collaboration
- Examples: Python FastAPI, TypeScript, Enterprise

**Module 4: @ Mentions & Context Feeding (30 min)**
- @ mentioning files, folders, URLs
- Referencing git commits and diffs
- How to give Claude the right context
- Context window management
- Practical examples: "Fix this bug @src/auth.py"
- Multi-file references
- Demo: Building context for a complex task

**Break (15 min)**

**Module 5: Context Management (45 min)**
- How Claude Code reads your workspace
- What's in context at any given moment
- Token limits and optimization strategies
- .claudeignore patterns (what to exclude)
- Context in multi-file projects
- Managing large codebases
- When to start fresh conversations
- Demo: Context optimization techniques

**Module 6: Lab 1 - Setup & First Project (45 min)**
- Install Claude Code
- Initialize a project with /init
- Configure CLAUDE.md for your stack
- First coding tasks: write functions, add tests
- Practice @ mentions and context feeding
- **Deliverable:** Configured project ready for development

### Afternoon Session (3.5-4 hours)

**Module 7: Slash Commands (45 min)**
- Command reference: /init, /compact, /clear, /model, /permissions
- Session management commands
- Model switching on the fly
- Compact mode for long conversations
- Creating custom slash commands (preview)
- When to use which command
- Demo: Power user workflow

**Module 8: Permissions & Security (45 min)**
- Security model and trust levels
- Allowlists and blocklists
- .clignore for sensitive files
- Safe command execution
- What Claude Code can and cannot do
- Preventing accidental damage
- Enterprise security considerations
- Demo: Setting up secure permissions

**Break (15 min)**

**Module 9: Git Integration (45 min)**
- Auto-commit workflows
- Branch creation and management
- Generating commit messages
- Pull request creation
- Git history analysis
- Comparing branches
- Integration with GitHub/GitLab
- Demo: End-to-end Git workflow

**Module 10: File Operations & Basic Workflows (45 min)**
- Reading, writing, searching files
- Multi-file edits and refactoring
- Code generation patterns
- Debugging workflows
- Test generation
- Documentation creation
- Practical patterns: when to iterate vs. start fresh
- Demo: Real debugging session

**Module 11: Lab 2 - Real Development Workflow (45 min)**
- Debug a real codebase with Claude Code
- Write comprehensive tests for existing code
- Refactor a module following best practices
- Generate API documentation
- Create pull request with Claude's help
- **Deliverable:** Working fixes, tests, docs ready to commit

**Module 12: Wrap-up (30 min)**
- Key workflows recap
- When to use Claude Code vs. other tools
- Cost management basics
- Q&A

**Coverage:** ~65-70 slides, 2 comprehensive labs, multiple live demos

---

## Day 3: Claude Code Advanced (7-8 hours)

**Audience:** Advanced developers, architects, AI/ML engineers  
**Format:** Deep technical dive with complex exercises  
**Prerequisites:** Day 2 completion or equivalent Claude Code experience

### Morning Session (3.5-4 hours)

**Module 1: Custom Commands (45 min)**
- What are custom commands
- Creating .claude/commands/ directory
- Slash command file format
- Parameterized commands
- Command best practices
- Real examples: /refactor, /test-this, /pr-review
- Sharing commands across teams
- Demo: Building a custom command library

**Module 2: Subagents & Orchestration (45 min)**
- What are subagents
- When to spawn subagents vs. single session
- Subagent communication patterns
- Orchestrating multiple subagents
- Error handling and coordination
- Real-world use cases
- Demo: Multi-agent code review workflow

**Module 3: Hooks (45 min)**
- Hook system overview
- Pre-tool hooks: validation, safety checks
- Post-tool hooks: logging, notifications, auditing
- Hook file structure and syntax
- Security implications
- Debugging hooks
- Real examples: audit logging, change counting
- Demo: Building a security hook

**Break (15 min)**

**Module 4: Plan Mode & Thinking Levels (45 min)**
- Plan mode: review before execution
- When to use plan mode
- Thinking levels: off, low, medium, high
- Impact on quality, speed, and cost
- Thinking level selection strategies
- Combining plan mode with high thinking
- Demo: Complex refactor with plan-first approach

**Module 5: Lab 1 - Custom Commands & Hooks (45 min)**
- Create 3 custom commands for your workflow
- Implement pre-tool hook for safety
- Implement post-tool hook for audit logging
- Test commands and hooks
- Share commands with team
- **Deliverable:** Production-ready command library and hooks

### Afternoon Session (3.5-4 hours)

**Module 6: Skills & Advanced CLAUDE.md (30 min)**
- Built-in skills in Claude Code
- Enabling and configuring skills
- Advanced CLAUDE.md patterns
- Multi-repo configurations
- Team style guides
- Project templates

**Module 7: MCP Fundamentals (45 min)**
- What is Model Context Protocol
- MCP architecture: servers, tools, resources, prompts
- MCP primitives explained
- Available MCP servers (GitHub, databases, APIs)
- When to use MCP vs. built-in tools
- Security considerations

**Module 8: MCP Practical (45 min)**
- Installing MCP servers
- Configuring MCP in projects
- GitHub integration via MCP
- Database access via MCP
- Building a custom MCP server
- Example: Simple MCP server walkthrough
- Demo: MCP in production use

**Break (15 min)**

**Module 9: Cowork / Claude for Work (30 min)**
- Autonomous mode overview
- Cowork tab in desktop app
- Background task execution
- When to use Cowork vs. interactive
- Task presets and workflows
- Monitoring autonomous work
- Demo: Long-running autonomous task

**Module 10: Agent Teams (45 min)**
- Multi-agent orchestration patterns
- Agent Teams vs. subagents vs. single session
- Contract-first spawning pattern
- Agent Teams setup and configuration
- Decision framework: when to use which
- Best practices and gotchas
- Real-world agent patterns
- Demo: Agent Teams in action

**Module 11: Lab 2 - MCP & Advanced Patterns (45 min)**
- Install and configure an MCP server
- Build a custom MCP tool for your workflow
- Create a multi-agent workflow with Agent Teams
- Implement contract-first pattern
- **Deliverable:** Working MCP integration and agent workflow

**Module 12: Advanced Workflows & Optimization (30 min)**
- Large codebase navigation strategies
- Multi-file refactoring at scale
- CI/CD integration patterns
- Production deployment workflows
- Cost management and optimization
- Model selection strategies
- Token efficiency techniques

**Module 13: Wrap-up (30 min)**
- Getting started roadmap
- Real-world deployment patterns
- Key takeaways
- Resources and community
- Q&A

**Coverage:** ~65-70 slides, 2 advanced labs, multiple complex demos

---

## Day 4: Microsoft AI Courses (6-8 hours)

**Audience:** Microsoft-focused developers and consultants  
**Format:** Mixed Microsoft Learn content delivery  
**Prerequisites:** AI fundamentals

### Course 1: PL-7008
*Microsoft course content TBD*

### Course 2: PL-7002  
*Microsoft course content TBD*

---

## Optional Module: Claude Enterprise Overview (90 min)

**Audience:** IT administrators, security teams, decision-makers  
**Format:** Executive briefing and admin walkthrough  
**Prerequisites:** None

**Topics:**
- What is Claude Enterprise
- Admin Console overview
- SSO & identity integration
- Data and security controls
- Usage analytics dashboard
- Claude Projects for teams
- Team sharing and collaboration
- Compliance (SOC 2, HIPAA, GDPR)
- Deployment best practices

**Position:** Optional pre-requisite for IT teams before Day 2, or standalone executive briefing

---

## Training Materials

### Slides
- Day 1: 79 slides (business essentials)
- Day 2: ~65-70 slides (Claude Code fundamentals)
- Day 3: ~65-70 slides (Claude Code advanced)
- Day 4: Microsoft content
- Optional: ~15 slides (Enterprise overview)

### Labs
Each day includes 2 hands-on labs (45 min each) with:
- Step-by-step instructions
- Sample data and starter files
- Real-world scenarios
- Professional deliverables students can use at work

### Handouts
- Claude Code Quick Reference (1-page cheat sheet)
- Claude Code Commands (comprehensive reference)
- Prompt Engineering Cheatsheet
- GOLDEN Framework template

### Sample Code
- CLAUDE.md examples (5 project types)
- Custom commands (6 production-ready examples)
- Hook examples (4 common patterns)
- MCP server starter template
- Sample project with full configuration

---

## Learning Outcomes

**After Day 1, students can:**
- Use Claude.ai effectively for business tasks
- Write effective prompts using GOLDEN framework
- Create professional documents and presentations
- Use Claude in Excel for data analysis
- Apply AI to their daily workflows
- Recognize when to use (and not use) AI

**After Day 2, students can:**
- Install and configure Claude Code
- Understand the agentic loop
- Configure projects with CLAUDE.md
- Use @ mentions and context management
- Execute secure workflows with proper permissions
- Integrate Claude Code with Git
- Develop code with AI assistance

**After Day 3, students can:**
- Create custom commands for team workflows
- Implement hooks for safety and auditing
- Build and deploy MCP servers
- Orchestrate multi-agent workflows
- Use advanced features (plan mode, thinking levels, Cowork)
- Optimize for cost and performance
- Deploy Claude Code in production

**After Day 4, students can:**
- Apply Microsoft-specific AI patterns
- Integrate with Microsoft ecosystem
- *[Specific outcomes TBD based on PL-7008/7002]*

---

## Course Philosophy

**Comprehensive over minimal:** More content is better. Students can skip what they know, but can't learn what isn't covered.

**Practical over theoretical:** Every concept needs a real-world example. Every lab produces something students use at work tomorrow.

**Honest over promotional:** We teach limitations alongside capabilities. This builds trust and prevents the 19% accuracy drop from AI misuse (BCG study).

**Current over outdated:** All content verified against latest Claude Code documentation (as of February 2026).

---

## Delivery Notes

**Pacing:** Each day designed for 7-8 hour delivery including breaks and labs.

**Demos:** Minimum 5 live demos per day. More is better. Demos show, don't just tell.

**Labs:** Students must produce deliverables. No theoretical exercises. Focus on "use this Monday at work."

**Questions:** Build in Q&A time at natural breaks. Encourage questions throughout.

**Adaptability:** Slides have comprehensive speaker notes. Instructors can adjust depth based on audience.

---

## Repository Structure

```
slides/          PowerPoint presentations for each module
labs/            Hands-on lab exercises with sample data
  demo-scripts/  Live demonstration guides
  sample-data/   Files for lab exercises
  sample-project/ Reference project with full config
handouts/        Quick reference materials
sample-code/     Reusable code examples and templates
```

---

**For questions about this training program:**  
Contact: AIA Copilot Training Team

**Latest course materials:**  
[Repository location TBD]

---

© 2026 AIA Copilot. All rights reserved.  
This is proprietary training content. Unauthorized distribution prohibited.

*Last updated: February 13, 2026*
