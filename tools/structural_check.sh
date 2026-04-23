#!/bin/bash
# Primitive RC — structural check tool
# Usage: bash tools/structural_check.sh <output_file> <discipline_name>
# Returns: [PASS]/[FAIL] per requirement, exit code = number of failures
#
# Reads requirements from tools/structural_requirements.md
# Each requirement is a grep pattern + human-readable label

set -euo pipefail

FILE="${1:-}"
DISCIPLINE="${2:-}"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REQS_FILE="$SCRIPT_DIR/structural_requirements.md"

if [ -z "$FILE" ] || [ -z "$DISCIPLINE" ]; then
  echo "Usage: structural_check.sh <output_file> <discipline_name>"
  echo "Disciplines: sensemaking, innovation, critique, exploration, decomposition"
  exit 99
fi

if [ ! -f "$FILE" ]; then
  echo "[ERROR] File not found: $FILE"
  exit 99
fi

if [ ! -f "$REQS_FILE" ]; then
  echo "[ERROR] Requirements file not found: $REQS_FILE"
  exit 99
fi

PASS=0
FAIL=0
TOTAL=0
in_section=false

while IFS= read -r line; do
  # Detect section headers (## discipline_name)
  if [[ "$line" =~ ^##[[:space:]]+(.*) ]]; then
    section_name="${BASH_REMATCH[1]}"
    if [[ "$section_name" == "$DISCIPLINE" ]]; then
      in_section=true
    else
      # Stop if we were in our section and hit a new one
      if $in_section; then
        break
      fi
      in_section=false
    fi
    continue
  fi

  # Parse requirement lines: - "pattern" | label
  if $in_section && [[ "$line" =~ ^-[[:space:]]+\"(.*)\"[[:space:]]*\|[[:space:]]*(.*) ]]; then
    pattern="${BASH_REMATCH[1]}"
    label="${BASH_REMATCH[2]}"
    ((TOTAL++))

    if grep -qE "$pattern" "$FILE" 2>/dev/null; then
      echo "[PASS] $label"
      ((PASS++))
    else
      echo "[FAIL] $label"
      ((FAIL++))
    fi
  fi
done < "$REQS_FILE"

if [ "$TOTAL" -eq 0 ]; then
  echo "[WARN] No requirements found for discipline: $DISCIPLINE"
  exit 0
fi

echo "---"
echo "RESULT: $PASS/$TOTAL passed, $FAIL failed."
exit "$FAIL"
