#!/bin/bash
# =============================================================================
# Hook: no-secrets.sh
# Type: PreToolUse
# Purpose: Block git commits containing hardcoded secrets
# =============================================================================

# Environment variables available:
# CLAUDE_TOOL - The tool being called (Bash, Write, Edit, etc.)
# CLAUDE_TOOL_INPUT - JSON of the tool input

# Only check Bash commands involving git commit
if [ "$CLAUDE_TOOL" = "Bash" ]; then
  if echo "$CLAUDE_TOOL_INPUT" | grep -q "git commit"; then
    
    # Secret patterns to detect
    SECRET_PATTERNS='(api[_-]?key|api[_-]?secret|password|passwd|pwd|secret|token|auth[_-]?token|access[_-]?key|private[_-]?key|client[_-]?secret)\s*[:=]\s*["\x27][^"\x27]+'
    
    # Check staged files for secrets
    if git diff --cached 2>/dev/null | grep -qiE "$SECRET_PATTERNS"; then
      echo "🚨 BLOCKED: Potential secret detected in staged changes!"
      echo ""
      echo "Found patterns that may contain hardcoded credentials."
      echo ""
      echo "Please review staged files and remove any:"
      echo "  • API keys"
      echo "  • Passwords"
      echo "  • Tokens"
      echo "  • Private keys"
      echo ""
      echo "Use environment variables instead."
      exit 2  # Exit 2 = block the action
    fi
    
    # Also check for common secret file additions
    STAGED_FILES=$(git diff --cached --name-only 2>/dev/null)
    for file in $STAGED_FILES; do
      case "$file" in
        *.pem|*.key|*credentials*|*.env|*secret*)
          echo "🚨 BLOCKED: Potentially sensitive file staged: $file"
          echo "Please verify this file should be committed."
          exit 2
          ;;
      esac
    done
  fi
fi

# Allow the action to proceed
exit 0
