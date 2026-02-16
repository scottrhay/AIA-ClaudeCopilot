# CLAUDE.md - Python FastAPI Template

# Project: [Service Name]

A Python REST API built with FastAPI and SQLAlchemy.

## Commands

### Development
- `uv run uvicorn app.main:app --reload` - Start dev server
- `uv run pytest` - Run tests
- `uv run pytest --cov` - Run tests with coverage
- `uv run ruff check .` - Lint code
- `uv run ruff format .` - Format code
- `uv run mypy .` - Type checking

### Database
- `uv run alembic upgrade head` - Run migrations
- `uv run alembic revision --autogenerate -m "description"` - Generate migration
- `uv run alembic downgrade -1` - Rollback last migration

### Docker
- `docker compose up -d` - Start all services
- `docker compose logs -f api` - Follow API logs
- `docker compose down` - Stop services

## Tech Stack
- Python 3.12
- FastAPI with Pydantic v2
- SQLAlchemy 2.0 (async)
- PostgreSQL
- Alembic for migrations
- pytest + pytest-asyncio for testing
- uv for package management

## Project Structure
```
├── app/
│   ├── main.py           # FastAPI app entry
│   ├── api/
│   │   ├── routes/       # Route handlers
│   │   └── deps.py       # Dependency injection
│   ├── core/
│   │   ├── config.py     # Settings (pydantic-settings)
│   │   └── security.py   # Auth utilities
│   ├── models/           # SQLAlchemy models
│   ├── schemas/          # Pydantic schemas
│   ├── services/         # Business logic
│   └── db/
│       ├── session.py    # Database connection
│       └── base.py       # Base model class
├── alembic/              # Migrations
├── tests/
│   ├── conftest.py       # Fixtures
│   ├── unit/
│   └── integration/
└── pyproject.toml
```

## Coding Conventions

### Python Style
- Follow PEP 8 (enforced by ruff)
- Type hints on all function signatures
- Docstrings for public functions (Google style)
- Max line length: 88 characters (black default)

### FastAPI
- Use dependency injection for DB sessions
- Pydantic models for all request/response bodies
- Path operations should be thin (delegate to services)
- Use `HTTPException` for error responses

### Database
- Async SQLAlchemy with `AsyncSession`
- All queries through repository pattern
- Use transactions for multi-table operations
- Index frequently queried columns

### Testing
- Async tests with `pytest-asyncio`
- Use factory fixtures for test data
- Integration tests use test database
- Mock external services

## Do
- Use Pydantic for validation (don't write manual checks)
- Use `async def` for all route handlers
- Run `uv run ruff check . && uv run mypy .` before committing
- Write docstrings for public functions
- Use settings from `core.config` (never hardcode)
- Use logging (not print statements)

## Don't
- Use `*` imports
- Catch generic `Exception` (be specific)
- Write raw SQL (use SQLAlchemy ORM)
- Store secrets in code (use environment variables)
- Skip type hints
- Use synchronous database operations

## API Patterns

### Response Models
```python
# All responses use explicit Pydantic models
@router.get("/users/{id}", response_model=UserResponse)
async def get_user(id: int, db: AsyncSession = Depends(get_db)):
    ...
```

### Error Handling
```python
# Use HTTPException with appropriate status codes
raise HTTPException(
    status_code=status.HTTP_404_NOT_FOUND,
    detail={"code": "USER_NOT_FOUND", "message": f"User {id} not found"}
)
```

### Authentication
- JWT bearer tokens
- Use `Depends(get_current_user)` for protected routes
- Scopes for permission levels

## Environment Variables
See `.env.example` for required variables:
- `DATABASE_URL` - PostgreSQL connection string
- `SECRET_KEY` - JWT signing key
- `ENVIRONMENT` - dev/staging/prod
