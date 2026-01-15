"""
Sample MCP Server for Claude Code Training

This is a demonstration MCP server that shows how to expose
tools and resources to Claude. It includes example implementations
of common integration patterns.

For production use, replace the mock implementations with
actual API calls to your systems.
"""

import json
import asyncio
from datetime import datetime

from mcp.server import Server
from mcp.server.stdio import stdio_server

# Create the MCP server instance
server = Server("demo-server")


# ============================================================
# TOOLS - Actions Claude can execute
# ============================================================

@server.tool()
def get_weather(city: str) -> str:
    """Get current weather for a city.

    Args:
        city: Name of the city to get weather for

    Returns:
        Weather information as a formatted string
    """
    # In a real implementation, this would call a weather API
    # Example: OpenWeatherMap, WeatherAPI, etc.
    mock_weather = {
        "new york": {"temp": 72, "condition": "Sunny", "humidity": 45},
        "london": {"temp": 58, "condition": "Cloudy", "humidity": 78},
        "tokyo": {"temp": 68, "condition": "Partly Cloudy", "humidity": 55},
    }

    city_lower = city.lower()
    if city_lower in mock_weather:
        w = mock_weather[city_lower]
        return f"Weather in {city}: {w['temp']}F, {w['condition']}, Humidity: {w['humidity']}%"

    return f"Weather in {city}: 70F, Clear skies (mock data)"


@server.tool()
def create_task(title: str, priority: str = "medium", assignee: str = None) -> dict:
    """Create a task in the task management system.

    Args:
        title: Title of the task
        priority: Priority level (low, medium, high)
        assignee: Optional username to assign the task to

    Returns:
        Dictionary with created task details
    """
    # In a real implementation, this would call your task API
    # Example: Jira, Asana, Monday.com, etc.
    task = {
        "id": f"TASK-{datetime.now().strftime('%Y%m%d%H%M%S')}",
        "title": title,
        "priority": priority,
        "assignee": assignee,
        "status": "open",
        "created_at": datetime.now().isoformat()
    }

    return task


@server.tool()
def search_documents(query: str, max_results: int = 5) -> list:
    """Search internal documents for relevant information.

    Args:
        query: Search query string
        max_results: Maximum number of results to return

    Returns:
        List of matching document summaries
    """
    # In a real implementation, this would search your document system
    # Example: SharePoint, Confluence, internal search API
    mock_results = [
        {
            "title": "Employee Handbook 2024",
            "snippet": f"...relevant information about {query}...",
            "url": "https://docs.company.com/handbook",
            "relevance": 0.95
        },
        {
            "title": "IT Security Policy",
            "snippet": f"...security guidelines related to {query}...",
            "url": "https://docs.company.com/security",
            "relevance": 0.82
        }
    ]

    return mock_results[:max_results]


@server.tool()
def send_notification(channel: str, message: str, urgency: str = "normal") -> dict:
    """Send a notification to a team channel.

    Args:
        channel: Name of the channel (e.g., "#engineering", "#general")
        message: The notification message
        urgency: Urgency level (low, normal, high)

    Returns:
        Confirmation of sent notification
    """
    # In a real implementation, this would call Slack, Teams, etc.
    return {
        "status": "sent",
        "channel": channel,
        "message": message,
        "urgency": urgency,
        "timestamp": datetime.now().isoformat()
    }


# ============================================================
# RESOURCES - Data Claude can read
# ============================================================

@server.resource("employee://{employee_id}")
def get_employee(employee_id: str) -> str:
    """Fetch employee information as a resource.

    Args:
        employee_id: The employee's unique ID

    Returns:
        JSON string with employee data
    """
    # In a real implementation, this would query your HR system
    mock_employees = {
        "E001": {
            "id": "E001",
            "name": "John Doe",
            "department": "Engineering",
            "email": "john.doe@company.com",
            "title": "Senior Developer",
            "manager": "Jane Smith"
        },
        "E002": {
            "id": "E002",
            "name": "Jane Smith",
            "department": "Engineering",
            "email": "jane.smith@company.com",
            "title": "Engineering Manager",
            "manager": "Bob Wilson"
        }
    }

    employee = mock_employees.get(employee_id, {
        "id": employee_id,
        "name": "Unknown Employee",
        "department": "Unknown",
        "email": f"{employee_id}@company.com"
    })

    return json.dumps(employee, indent=2)


@server.resource("config://{config_name}")
def get_config(config_name: str) -> str:
    """Fetch application configuration as a resource.

    Args:
        config_name: Name of the configuration to retrieve

    Returns:
        JSON string with configuration data
    """
    # In a real implementation, this would read from config management
    mock_configs = {
        "database": {
            "host": "db.internal.company.com",
            "port": 5432,
            "max_connections": 100,
            "ssl_enabled": True
        },
        "api": {
            "rate_limit": 1000,
            "timeout_seconds": 30,
            "retry_attempts": 3
        }
    }

    config = mock_configs.get(config_name, {"error": f"Config '{config_name}' not found"})
    return json.dumps(config, indent=2)


@server.resource("metrics://system")
def get_system_metrics() -> str:
    """Fetch current system metrics.

    Returns:
        JSON string with system health metrics
    """
    # In a real implementation, this would pull from monitoring systems
    metrics = {
        "timestamp": datetime.now().isoformat(),
        "cpu_usage_percent": 45.2,
        "memory_usage_percent": 62.8,
        "disk_usage_percent": 71.5,
        "active_connections": 234,
        "requests_per_second": 1523,
        "error_rate_percent": 0.02,
        "status": "healthy"
    }

    return json.dumps(metrics, indent=2)


# ============================================================
# SERVER STARTUP
# ============================================================

async def main():
    """Run the MCP server using stdio transport."""
    print("Starting Demo MCP Server...", flush=True)

    async with stdio_server() as streams:
        await server.run(*streams)


if __name__ == "__main__":
    asyncio.run(main())
