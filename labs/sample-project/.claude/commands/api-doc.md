---
description: Generate API documentation for an endpoint
---

Analyze the endpoint or route file at $ARGUMENTS and generate comprehensive API documentation.

Include the following sections:

## Endpoint Summary
One-line description of what this endpoint does.

## HTTP Details
- **Method:** GET/POST/PUT/DELETE
- **Path:** /api/...
- **Authentication:** Required/Optional/None

## Request Format
If POST/PUT, show the expected JSON body with field descriptions:
```json
{
  "field": "description"
}
```

## Query Parameters
| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| example   | string | No | Example param |

## Response Format

### Success (200/201)
```json
{
  "field": "example response"
}
```

### Error Responses
| Code | Description |
|------|-------------|
| 400 | Bad request - validation failed |
| 404 | Resource not found |
| 500 | Internal server error |

## Example Requests

```bash
# Create a resource
curl -X POST http://localhost:3000/api/resource \
  -H "Content-Type: application/json" \
  -d '{"field": "value"}'

# Get a resource
curl http://localhost:3000/api/resource/1
```

Format as clean Markdown suitable for a README or API docs site.
