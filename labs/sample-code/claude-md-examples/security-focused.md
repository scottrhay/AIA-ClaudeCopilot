# CLAUDE.md - Security-Focused Template

# Project: [Application Name]

**Classification:** [Internal/Confidential/Restricted]  
**Data Types:** [PII/PHI/Financial/etc.]

## ⚠️ Security Notice

This application handles sensitive data. All code changes must follow security requirements below.

## Commands

### Development
- `make dev` - Start local environment (uses mock data)
- `make test` - Run tests including security tests
- `make lint` - Lint including security linters
- `make audit` - Run dependency vulnerability scan
- `make secrets-scan` - Scan for exposed secrets

### Security Testing
- `make security-test` - SAST scan (Semgrep)
- `make dependency-check` - OWASP dependency check
- `make secrets-detect` - Gitleaks/Trufflehog

### Before Committing
```bash
make pre-commit  # Runs lint + test + security-test + secrets-scan
```

## Tech Stack
- [Language/Framework]
- All dependencies pinned to exact versions
- Automated vulnerability scanning in CI

## Security Requirements

### Authentication & Authorization
- OAuth 2.0 / OpenID Connect
- JWT tokens with short expiry (15 min access, 24h refresh)
- Role-based access control (RBAC)
- All endpoints require authentication unless explicitly public

### Data Protection
- Encryption at rest (AES-256)
- Encryption in transit (TLS 1.3)
- PII fields encrypted in database
- No sensitive data in logs

### Input Validation
- Validate ALL inputs (never trust client)
- Use allowlists, not blocklists
- Parameterized queries only
- Content-Type validation

### Output Encoding
- HTML entity encoding for web output
- JSON encoding for API responses
- No reflection of user input

## Do
- Validate and sanitize ALL user input
- Use parameterized queries/ORM (never string concatenation)
- Log security events (auth failures, access denials)
- Use HTTPS for all external communication
- Implement rate limiting on all endpoints
- Use secure session management
- Follow principle of least privilege
- Encrypt sensitive data at rest
- Use strong, unique secrets per environment
- Run security tests before every commit

## Don't
- Log sensitive data (passwords, tokens, PII)
- Store secrets in code or config files
- Use MD5 or SHA1 for security purposes
- Disable SSL/TLS verification
- Use `eval()` or similar dynamic execution
- Trust client-side validation alone
- Expose stack traces in production
- Use default credentials
- Store passwords in plain text
- Ignore security warnings from tools

## Secrets Management
```
⚠️ NEVER commit secrets to version control

✅ Use:
- Environment variables for local dev
- HashiCorp Vault in staging/production
- GitHub Secrets for CI/CD

❌ Never:
- Hardcode credentials
- Commit .env files
- Log secrets
- Send secrets via Slack/email
```

## OWASP Top 10 Checklist

| Risk | Mitigation |
|------|------------|
| Injection | Parameterized queries, input validation |
| Broken Auth | Strong passwords, MFA, session management |
| Sensitive Data | Encryption, minimize data retention |
| XXE | Disable external entities in XML parsers |
| Broken Access Control | RBAC, deny by default |
| Misconfig | Hardened configs, remove defaults |
| XSS | Output encoding, CSP headers |
| Deserialization | Avoid deserializing untrusted data |
| Components | Keep dependencies updated, scan for vulns |
| Logging | Log security events, protect logs |

## Security Headers
All responses must include:
```
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Security-Policy: default-src 'self'
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-XSS-Protection: 1; mode=block
```

## Incident Response
If you discover a security issue:
1. **Don't** discuss in public channels
2. Report to security@company.com
3. Document in private security issue tracker
4. Do not merge any fix without security team review

## Code Review Security Checklist
- [ ] Input validation on all user data
- [ ] Output encoding for all displayed data
- [ ] No hardcoded secrets or credentials
- [ ] Proper error handling (no stack traces)
- [ ] Authentication/authorization enforced
- [ ] Sensitive data encrypted
- [ ] Logging doesn't include PII
- [ ] Dependencies are up to date
- [ ] Security tests pass

## Approved Libraries

### Cryptography
- Use: [approved crypto library]
- Don't: Roll your own crypto

### Authentication
- Use: [approved auth library]
- Don't: Custom token implementations

### Input Validation
- Use: [approved validation library]
- Don't: Regex-only validation

## Audit Requirements
- All data access must be logged
- Retain logs for [X] days minimum
- PII access requires justification
- Regular access reviews required

## Compliance
This project must comply with:
- [ ] SOC 2 Type II
- [ ] GDPR (if EU users)
- [ ] HIPAA (if PHI)
- [ ] PCI DSS (if payment data)

See compliance documentation for detailed requirements.
