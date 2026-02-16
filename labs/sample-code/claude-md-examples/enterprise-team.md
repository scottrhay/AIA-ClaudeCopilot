# CLAUDE.md - Enterprise Team Template

# Project: [Application Name]

Enterprise application maintained by [Team Name].

## Team Contacts
- **Tech Lead:** [Name] - Architecture decisions
- **On-call:** See PagerDuty schedule
- **Slack:** #[team-channel]

## Commands

### Development
- `make dev` - Start local development environment
- `make test` - Run test suite
- `make lint` - Run all linters
- `make build` - Build for deployment

### Database
- `make db-migrate` - Run pending migrations
- `make db-rollback` - Rollback last migration
- `make db-seed` - Seed development data

### CI/CD (via GitHub Actions)
- Push to `main` → Deploy to staging
- Tag `v*` → Deploy to production
- PR → Run tests + lint + security scan

## Tech Stack
- **Language:** [Language/Version]
- **Framework:** [Framework/Version]
- **Database:** [Database/Version]
- **Cache:** Redis
- **Queue:** RabbitMQ
- **Monitoring:** Datadog
- **Logging:** Structured JSON → ELK

## Architecture
```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Client    │────▶│   API GW    │────▶│  This Svc   │
└─────────────┘     └─────────────┘     └─────────────┘
                                               │
                    ┌──────────────────────────┼──────────────────────────┐
                    ▼                          ▼                          ▼
             ┌─────────────┐           ┌─────────────┐           ┌─────────────┐
             │  Database   │           │    Redis    │           │   Events    │
             └─────────────┘           └─────────────┘           └─────────────┘
```

## Coding Standards

### Mandatory (Enforced by CI)
- All code must pass linting
- Test coverage minimum: 80%
- No security vulnerabilities (Snyk)
- Conventional commit messages

### Code Review Requirements
- 1 approval minimum
- Tech lead approval for:
  - Database schema changes
  - API contract changes
  - New dependencies
  - Infrastructure changes

### Documentation Requirements
- README for all new features
- ADR (Architecture Decision Record) for significant changes
- API docs auto-generated from code
- Runbook updates for operational changes

## Branch Strategy
```
main (protected)
  └── feature/JIRA-123-description
  └── fix/JIRA-456-bug-description
  └── hotfix/JIRA-789-urgent-fix
```

## Commit Message Format
```
type(scope): description

[optional body]

[optional footer]
JIRA: PROJ-123
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

## Do
- Follow the team's coding standards (see Confluence)
- Write tests for all new code
- Update documentation with changes
- Use feature flags for risky changes
- Add structured logging for debugging
- Include JIRA ticket in commit messages
- Run full test suite before pushing

## Don't
- Merge without required approvals
- Deploy on Fridays without approval
- Add dependencies without security review
- Modify shared libraries without coordination
- Hardcode configuration values
- Log sensitive data (PII, credentials)
- Bypass the PR process

## Security Requirements
- No secrets in code (use Vault)
- All inputs validated
- SQL injection prevention (parameterized queries)
- XSS prevention (output encoding)
- Authentication required for all endpoints
- Rate limiting on public endpoints

## Incident Response
1. Check #incidents Slack channel
2. Review Datadog dashboards
3. Check recent deployments
4. Escalate via PagerDuty if needed
5. Document in incident report

## Useful Links
- [Confluence Space](https://...)
- [Runbooks](https://...)
- [API Documentation](https://...)
- [Datadog Dashboard](https://...)
- [CI/CD Pipeline](https://...)

## Environment Variables
All config via environment variables. See `.env.example`.
Never commit actual values - use secrets management.

| Variable | Description | Required |
|----------|-------------|----------|
| DATABASE_URL | PostgreSQL connection | Yes |
| REDIS_URL | Redis connection | Yes |
| JWT_SECRET | Token signing key | Yes |
| LOG_LEVEL | debug/info/warn/error | No (default: info) |
