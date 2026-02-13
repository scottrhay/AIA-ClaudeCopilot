# CLAUDE.md Examples

Production-ready CLAUDE.md templates for different project types. Copy and customize for your projects.

## Templates

| Template | Best For |
|----------|----------|
| `minimal.md` | Quick start, small projects |
| `typescript-fullstack.md` | TypeScript + Node.js + React |
| `python-fastapi.md` | Python backend services |
| `enterprise-team.md` | Team conventions, larger orgs |
| `security-focused.md` | Security-critical applications |

## How to Use

1. Choose the template closest to your project
2. Copy to your project root as `CLAUDE.md`
3. Customize:
   - Update commands for your tooling
   - Add your coding conventions
   - Include domain-specific context
4. Commit to version control (share with team)

## Best Practices

### Keep It Updated
Your CLAUDE.md should evolve with your project. Update it when you:
- Add new tools or commands
- Establish new conventions
- Learn what Claude gets wrong (add to "Don't" section)

### Not Too Long
Aim for under 2000 characters. Claude reads this every session.
- Focus on what's unique to YOUR project
- Don't repeat common patterns Claude already knows
- Link to docs instead of including everything

### Team Alignment
CLAUDE.md is documentation for Claude AND humans:
- Onboarding: New devs learn conventions quickly
- Consistency: Everyone gets the same AI behavior
- Enforcement: Claude will follow your rules

## Template Comparison

| Feature | Minimal | TypeScript | Python | Enterprise | Security |
|---------|---------|------------|--------|------------|----------|
| Commands | Basic | Full | Full | Custom | Audit |
| Conventions | Few | Detailed | Detailed | Strict | Paranoid |
| Testing | Mentioned | Jest | Pytest | Coverage | Security tests |
| Git hooks | No | Yes | Yes | Yes | Required |
| Best for | Prototypes | Full-stack apps | APIs | Teams | Finance/Health |
