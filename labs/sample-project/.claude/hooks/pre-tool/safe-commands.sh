#!/bin/bash
# =============================================================================
# Hook: safe-commands.sh
# Type: PreToolUse
# Purpose: Block dangerous shell commands
# =============================================================================

if [ "$CLAUDE_TOOL" = "Bash" ]; then
  INPUT="$CLAUDE_TOOL_INPUT"
  
  # Block rm -rf / (or similar catastrophic deletions)
  if echo "$INPUT" | grep -qE "rm\s+(-[rf]{2,}|--recursive)\s+/\s*$"; then
    echo "🛑 BLOCKED: Refusing to delete root filesystem!"
    echo "This command would destroy everything. That's probably not what you want."
    exit 2
  fi
  
  # Block rm on system directories
  if echo "$INPUT" | grep -qE "rm.*(/usr|/bin|/sbin|/etc|/var|/boot|/lib)"; then
    echo "🛑 BLOCKED: Cannot delete system directories!"
    exit 2
  fi
  
  # Block sudo commands (require manual execution)
  if echo "$INPUT" | grep -q "sudo"; then
    echo "⚠️ BLOCKED: sudo commands require manual execution."
    echo ""
    echo "For security, Claude cannot run privileged commands."
    echo "Please run this command yourself in a separate terminal:"
    echo ""
    echo "  $INPUT"
    echo ""
    exit 2
  fi
  
  # Block curl/wget piped to shell (common malware pattern)
  if echo "$INPUT" | grep -qE "(curl|wget).*\|\s*(ba)?sh"; then
    echo "🛑 BLOCKED: Piping downloaded content to shell is dangerous!"
    echo ""
    echo "This pattern is commonly used for malware distribution."
    echo "Instead:"
    echo "  1. Download the script first"
    echo "  2. Inspect its contents"
    echo "  3. Then execute if safe"
    exit 2
  fi
  
  # Block direct access to credential files
  if echo "$INPUT" | grep -qE "(cat|less|more|head|tail|vim|nano).*(\\.ssh|\\.aws|\\.env|credentials|secrets)"; then
    echo "🔐 BLOCKED: Direct access to credential files prevented."
    echo ""
    echo "These files often contain sensitive data."
    echo "Access them manually if needed."
    exit 2
  fi
  
  # Block commands that disable security features
  if echo "$INPUT" | grep -qE "(chmod 777|setenforce 0|iptables -F)"; then
    echo "🛡️ BLOCKED: Command would weaken system security."
    exit 2
  fi
fi

# All checks passed - allow the action
exit 0
