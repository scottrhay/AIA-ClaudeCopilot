# status-service

Tiny internal service that reports order status. Used for demonstrations.

## Commands
- Run: `npm start` (defaults to port 3200, override with PORT)
- Test: `npm test`

## Conventions
- No external dependencies. Node standard library only — do not add packages.
- Responses are JSON. Errors return `{ "error": "description" }` with a matching status code.
- Every new route gets a test in `server.test.js`.
- Version lives in `package.json` and is the single source of truth.
