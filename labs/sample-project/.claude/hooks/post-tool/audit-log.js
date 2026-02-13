#!/usr/bin/env node
/**
 * =============================================================================
 * Hook: audit-log.js
 * Type: PostToolUse
 * Purpose: Log all file modifications for audit trail
 * =============================================================================
 */

const fs = require('fs');
const path = require('path');

// Hook data is passed via environment variable as JSON
const hookDataRaw = process.env.CLAUDE_HOOK_DATA || '{}';
let hookData;

try {
  hookData = JSON.parse(hookDataRaw);
} catch (e) {
  // Invalid JSON - exit silently
  process.exit(0);
}

// Tools that modify files
const MODIFYING_TOOLS = ['Write', 'Edit', 'Bash'];

// Only log modifying operations
if (!MODIFYING_TOOLS.includes(hookData.tool)) {
  process.exit(0);
}

// Build log entry
const logEntry = {
  timestamp: new Date().toISOString(),
  tool: hookData.tool,
  file: hookData.input?.path || hookData.input?.file_path || null,
  command: null,
  success: hookData.output?.success !== false,
  session: process.env.CLAUDE_SESSION_ID || 'unknown'
};

// For Bash commands, capture the command (truncated for safety)
if (hookData.tool === 'Bash' && hookData.input?.command) {
  logEntry.command = hookData.input.command.substring(0, 200);
}

// Ensure log directory exists
const logDir = path.join(process.cwd(), '.claude');
const logFile = path.join(logDir, 'audit.log');

try {
  if (!fs.existsSync(logDir)) {
    fs.mkdirSync(logDir, { recursive: true });
  }

  // Append to log file (one JSON object per line)
  fs.appendFileSync(logFile, JSON.stringify(logEntry) + '\n');
} catch (e) {
  // Log write failed - don't crash, just continue
  // Could write to stderr for debugging:
  // console.error('[audit-log] Failed to write:', e.message);
}

// PostToolUse hooks cannot block - just exit cleanly
process.exit(0);
