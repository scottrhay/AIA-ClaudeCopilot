# CLAUDE.md - TypeScript Full-Stack Template

# Project: [App Name]

A full-stack TypeScript application with React frontend and Node.js backend.

## Commands

### Development
- `npm run dev` - Start both frontend and backend in dev mode
- `npm run dev:client` - Start React dev server (port 3000)
- `npm run dev:server` - Start Express dev server (port 4000)

### Testing
- `npm test` - Run all tests
- `npm run test:unit` - Unit tests only
- `npm run test:e2e` - End-to-end tests (Playwright)
- `npm run test:coverage` - Generate coverage report

### Building
- `npm run build` - Build for production
- `npm run typecheck` - Run TypeScript compiler check
- `npm run lint` - ESLint + Prettier check
- `npm run lint:fix` - Auto-fix lint issues

### Database
- `npm run db:migrate` - Run pending migrations
- `npm run db:seed` - Seed development data
- `npm run db:reset` - Reset and reseed database

## Tech Stack

### Frontend (client/)
- React 18 with TypeScript
- Vite for bundling
- TanStack Query for data fetching
- Tailwind CSS for styling
- React Hook Form + Zod for forms

### Backend (server/)
- Express.js with TypeScript
- PostgreSQL with Prisma ORM
- JWT authentication
- Zod for validation

### Testing
- Jest for unit tests
- Playwright for E2E
- MSW for API mocking

## Project Structure
```
├── client/           # React frontend
│   ├── src/
│   │   ├── components/  # Reusable UI components
│   │   ├── features/    # Feature modules
│   │   ├── hooks/       # Custom React hooks
│   │   └── lib/         # Utilities
├── server/           # Express backend
│   ├── src/
│   │   ├── routes/      # API route handlers
│   │   ├── services/    # Business logic
│   │   ├── middleware/  # Express middleware
│   │   └── lib/         # Utilities
├── prisma/           # Database schema & migrations
└── e2e/              # Playwright tests
```

## Coding Conventions

### TypeScript
- Strict mode enabled - no `any` types
- Use `interface` for object shapes, `type` for unions/aliases
- Prefer `unknown` over `any` when type is truly unknown
- Export types alongside implementations

### React
- Functional components only
- Use named exports (not default)
- Colocate component, styles, and tests
- Custom hooks for shared logic

### Backend
- All routes async/await
- Validation at route boundary (Zod schemas)
- Services are pure functions when possible
- Errors thrown as custom error classes

### Database
- Migrations for all schema changes
- Use transactions for multi-table operations
- Soft delete where applicable (deletedAt timestamp)

## Do
- Run `npm run typecheck` before committing
- Write tests for new features (aim for 80% coverage)
- Use conventional commits: `feat:`, `fix:`, `docs:`, `refactor:`
- Add JSDoc comments to exported functions
- Use environment variables for all config (see .env.example)

## Don't
- Use `any` type (configure strict: true)
- Mutate state directly in React
- Write raw SQL (use Prisma client)
- Commit .env files or secrets
- Skip error handling in async functions
- Use `console.log` in production code (use logger)

## Common Patterns

### API Response Format
```typescript
// Success
{ data: T, meta?: { pagination } }

// Error
{ error: { code: string, message: string, details?: any } }
```

### Error Handling
```typescript
// Use custom error classes
throw new NotFoundError('User not found');
throw new ValidationError('Invalid email', { field: 'email' });
```

### Authentication
- JWT tokens in HTTP-only cookies
- Access token: 15 min, Refresh token: 7 days
- Use `requireAuth` middleware for protected routes
