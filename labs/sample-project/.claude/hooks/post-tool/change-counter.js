#!/usr/bin/env node
/**
 * =============================================================================
 * Hook: change-counter.js
 * Type: PostToolUse
 * Purpose: Track and warn about large numbers of file changes
 * =============================================================================
 */

const fs = require('fs');
const path = require('path');

const hookDataRaw = process.env.CLAUDE_HOOK_DATA || '{}';
let hookData;

try {
  hookData = JSON.parse(hookDataRaw);
} catch (e) {
  process.exit(0);
}

// Only track Write and Edit operations
if (!['Write', 'Edit'].includes(hookData.tool)) {
  process.exit(0);
}

// State file to track changes across the session
const stateDir = path.join(process.cwd(), '.claude');
const stateFile = path.join(stateDir, 'session-changes.json');

// Load or initialize state
let state = { files: [], count: 0 };
try {
  if (fs.existsSync(stateFile)) {
    state = JSON.parse(fs.readFileSync(stateFile, 'utf8'));
  }
} catch (e) {
  state = { files: [], count: 0 };
}

// Track this change
const changedFile = hookData.input?.path || hookData.input?.file_path;
if (changedFile && !state.files.includes(changedFile)) {
  state.files.push(changedFile);
  state.count = state.files.length;
}

// Save state
try {
  if (!fs.existsSync(stateDir)) {
    fs.mkdirSync(stateDir, { recursive: true });
  }
  fs.writeFileSync(stateFile, JSON.stringify(state, null, 2));
} catch (e) {
  // Ignore write errors
}

// Warning thresholds
const WARNING_THRESHOLD = 10;
const ALERT_THRESHOLD = 20;

// Output warnings (these go to Claude's context)
if (state.count === WARNING_THRESHOLD) {
  console.log(`⚠️ Notice: ${state.count} files have been modified in this session.`);
  console.log('Consider committing changes incrementally.');
} else if (state.count === ALERT_THRESHOLD) {
  console.log(`🚨 Alert: ${state.count} files modified! This is a large changeset.`);
  console.log('Recommend: Review changes and commit before continuing.');
  console.log('Modified files:');
  state.files.slice(-10).forEach(f => console.log(`  - ${f}`));
}

process.exit(0);
