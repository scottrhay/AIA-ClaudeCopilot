# Sample MCP Server

A demonstration Model Context Protocol (MCP) server for Claude Code training labs.

## Overview

This MCP server demonstrates how to expose tools and resources to Claude. It includes mock implementations of common integration patterns that can be replaced with actual API calls in production.

## Features

### Tools (Actions)

| Tool | Description | Example Use |
|------|-------------|-------------|
| `get_weather` | Get weather for a city | "What's the weather in New York?" |
| `create_task` | Create a task with priority | "Create a high priority task for code review" |
| `search_documents` | Search internal docs | "Search for security policies" |
| `send_notification` | Send team notification | "Send a message to #engineering" |

### Resources (Data)

| Resource | Description | URI Pattern |
|----------|-------------|-------------|
| Employee info | HR system data | `employee://E001` |
| Configuration | App config values | `config://database` |
| System metrics | Monitoring data | `metrics://system` |

## Prerequisites

- Python 3.8 or higher
- pip (Python package manager)

## Installation

1. Create a virtual environment:

   ```bash
   python -m venv venv
   ```

2. Activate the virtual environment:

   **On macOS/Linux:**
   ```bash
   source venv/bin/activate
   ```

   **On Windows:**
   ```bash
   venv\Scripts\activate
   ```

3. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

## Running the Server

```bash
python server.py
```

The server communicates via stdio (standard input/output) which is how MCP servers connect to Claude.

## Customization

### Adding New Tools

Add a new tool by creating a decorated function:

```python
@server.tool()
def my_custom_tool(param1: str, param2: int = 10) -> dict:
    """Description shown to Claude.

    Args:
        param1: Description of first parameter
        param2: Description of second parameter

    Returns:
        Dictionary with result data
    """
    # Your implementation here
    return {"result": "success"}
```

### Adding New Resources

Add a new resource with URI template:

```python
@server.resource("mydata://{id}")
def get_my_data(id: str) -> str:
    """Description shown to Claude.

    Args:
        id: The resource identifier

    Returns:
        JSON string with data
    """
    data = {"id": id, "value": "example"}
    return json.dumps(data)
```

## Integration Patterns

### Replacing Mock Implementations

The server includes mock data for demonstration. In production, replace these with actual API calls:

```python
# Before (mock)
@server.tool()
def get_weather(city: str) -> str:
    return f"Weather in {city}: 70F, Clear"

# After (real API)
@server.tool()
def get_weather(city: str) -> str:
    import httpx
    response = httpx.get(f"https://api.weather.com/v1/{city}")
    data = response.json()
    return f"Weather in {city}: {data['temp']}F, {data['condition']}"
```

### Adding Authentication

For APIs requiring authentication:

```python
import os
import httpx

API_KEY = os.environ.get("MY_API_KEY")

@server.tool()
def authenticated_action(param: str) -> dict:
    response = httpx.post(
        "https://api.example.com/action",
        headers={"Authorization": f"Bearer {API_KEY}"},
        json={"param": param}
    )
    return response.json()
```

## Security Considerations

1. **Credentials**: Use environment variables for API keys and secrets
2. **Permissions**: Implement least-privilege access for each tool
3. **Validation**: Validate and sanitize all input parameters
4. **Logging**: Log all tool invocations for audit purposes
5. **Rate Limiting**: Implement rate limiting for external API calls

## Troubleshooting

| Issue | Solution |
|-------|----------|
| `ModuleNotFoundError: mcp` | Run `pip install -r requirements.txt` |
| Server won't start | Ensure Python 3.8+ and virtual env is activated |
| Tools not appearing | Check function decorators and docstrings |
| Connection issues | Verify stdio transport is working |

## Additional Resources

- MCP Specification: https://modelcontextprotocol.io
- MCP Python SDK: https://mcp-python.readthedocs.io
- Anthropic Documentation: https://docs.anthropic.com
