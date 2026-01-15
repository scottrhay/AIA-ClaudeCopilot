# Sample API Project

A simple Node.js/Express REST API for Claude Code training labs.

## Overview

This project provides a basic REST API with user management functionality. It is designed for use in the Claude Code training labs to demonstrate:

- Codebase exploration with Claude
- AI-assisted code changes
- CLAUDE.md configuration

## Prerequisites

- Node.js 18 or higher
- npm (comes with Node.js)

## Quick Start

1. Install dependencies:

   ```bash
   npm install
   ```

2. Start the server:

   ```bash
   npm start
   ```

3. The API will be available at `http://localhost:3000`

## Available Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | API information |
| GET | `/api/health` | Health check |
| GET | `/api/users` | List all users |
| GET | `/api/users/:id` | Get user by ID |
| POST | `/api/users` | Create new user |
| DELETE | `/api/users/:id` | Delete user |

## API Examples

### Create a user

```bash
curl -X POST http://localhost:3000/api/users \
  -H "Content-Type: application/json" \
  -d '{"username": "johndoe", "email": "john@example.com", "password": "secret123"}'
```

### Get all users

```bash
curl http://localhost:3000/api/users
```

### Get user by ID

```bash
curl http://localhost:3000/api/users/1
```

## Running Tests

```bash
npm test
```

For watch mode during development:

```bash
npm run test:watch
```

## Development

For development with auto-reload:

```bash
npm run dev
```

## Project Structure

```
sample-project/
├── src/
│   ├── index.js         # Express server setup
│   ├── routes/
│   │   └── users.js     # User route handlers
│   └── models/
│       └── user.js      # User model
├── tests/
│   └── users.test.js    # Jest tests
├── package.json
└── README.md
```

## Lab Exercises

This project is used in the following lab exercises:

### Exercise 1: Codebase Exploration
- Use Claude to explore and understand the project structure
- Ask about API endpoints and authentication

### Exercise 2: Making Code Changes
- Add input validation to the user registration endpoint
- The `POST /api/users` route intentionally lacks validation

### Exercise 3: CLAUDE.md Configuration
- Create a CLAUDE.md file with project-specific settings
- Define coding conventions for the project

## Notes

- This is a demo project with in-memory storage (data resets on restart)
- Input validation is intentionally missing for lab exercises
- No authentication is implemented for simplicity
