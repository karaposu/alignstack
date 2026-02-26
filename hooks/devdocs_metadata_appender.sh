#!/bin/bash
# Hook: Auto-inject metadata header into devdocs files
# Triggered by: PreToolUse on Write tool
# Reads tool input from stdin, checks if file is under devdocs/,
# and prepends metadata block if so.

set -e

# Read tool input from stdin
INPUT=$(cat)

# Extract file path from tool input
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

# If no file path or not a devdocs file, let it through unchanged
if [ -z "$FILE_PATH" ]; then
  exit 0
fi

case "$FILE_PATH" in
  *devdocs/*)
    ;;
  *)
    exit 0
    ;;
esac

# Extract the content
CONTENT=$(echo "$INPUT" | jq -r '.tool_input.content // empty')

# If content is empty or already has a metadata header, skip
if [ -z "$CONTENT" ]; then
  exit 0
fi

if echo "$CONTENT" | head -1 | grep -q '^---$'; then
  exit 0
fi

# Gather metadata from git
CREATED=$(date +%Y-%m-%d)
BRANCH=$(git branch --show-current 2>/dev/null || echo "unknown")
BASE_COMMIT=$(git rev-parse --short HEAD 2>/dev/null || echo "unknown")
AUTHOR=$(git config user.name 2>/dev/null || echo "unknown")

# Build metadata header
METADATA="---
created: ${CREATED}
branch: ${BRANCH}
base_commit: ${BASE_COMMIT}
author: ${AUTHOR}
---

"

# Prepend metadata to content
NEW_CONTENT="${METADATA}${CONTENT}"

# Return updated input as JSON
jq -n --arg content "$NEW_CONTENT" --arg path "$FILE_PATH" \
  '{"updatedInput": {"file_path": $path, "content": $content}}'
