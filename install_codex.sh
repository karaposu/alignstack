#!/bin/bash
# Install AlignStack skills into OpenAI Codex format
# Transforms commands/*.md → .codex/skills/<name>/SKILL.md
#
# Usage:
#   bash install_codex.sh              # local repo-level (default when in repo)
#   bash install_codex.sh --user       # user-level (~/.codex/skills/)
#   bash install_codex.sh --repo       # repo-level (.codex/skills/)
#
# Remote (curl):
#   curl -sL https://raw.githubusercontent.com/karaposu/alignstack/main/install_codex.sh | bash
#   curl -sL ... | bash -s -- --repo   # install to current directory's .codex/skills/

set -euo pipefail

RAW_URL="https://raw.githubusercontent.com/karaposu/alignstack/main"
CLEANUP=""

# Keep this list in sync with commands/install.sh
REMOTE_COMMANDS=(
  devdocs-foundation.md
  devdocs-foundation-concepts.md
  devdocs-foundation-simplified-concepts.md
  devdocs-foundation-identify-modules.md
  devdocs-foundation-architecture.md
  elaborate.md
  task-desc.md
  task-plan.md
  critic.md
  critic-d.md
  sense-making.md
  innovate.md
  td_critique.md
  decompose.md
  explore.md
  wayfinding.md
  inquiry.md
  comprehend.md
  MVL.md
  MVL+.md
  reflect.md
  navigation.md
  arch-small-summary.md
  arch-intro.md
  arch-traces.md
  arch-traces-2.md
  arch-top-improvements.md
  dead-code-index.md
  dead-code-concepts.md
  roadmap.md
  overview-report.md
  align.md
  align-modes.md
  devdocs-archivist.md
)

# Detect source: local repo or remote download
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd 2>/dev/null || pwd)"
COMMANDS_DIR="$SCRIPT_DIR/commands"

if [ ! -d "$COMMANDS_DIR" ]; then
  echo "Downloading AlignStack commands..."
  TMPDIR=$(mktemp -d)
  CLEANUP="$TMPDIR"
  COMMANDS_DIR="$TMPDIR/commands"
  mkdir -p "$COMMANDS_DIR"
  for cmd in "${REMOTE_COMMANDS[@]}"; do
    echo "  downloading $cmd"
    curl -fsSL "$RAW_URL/commands/$cmd" -o "$COMMANDS_DIR/$cmd"
  done
  REMOTE=true
else
  REMOTE=false
fi

trap '[ -n "$CLEANUP" ] && rm -rf "$CLEANUP"' EXIT

# Default: --user for remote installs, --repo for local
if [ -z "${1:-}" ]; then
  if $REMOTE; then
    MODE="--user"
  else
    MODE="--repo"
  fi
else
  MODE="$1"
fi

case "$MODE" in
  --user)   TARGET="$HOME/.codex/skills" ;;
  --repo)
    if $REMOTE; then
      TARGET="$(pwd)/.codex/skills"
    else
      TARGET="$SCRIPT_DIR/.codex/skills"
    fi
    ;;
  --help|-h)
    echo "Usage: bash install_codex.sh [--repo | --user]"
    echo "  --repo  Install to .codex/skills/ in project root (or cwd for remote)"
    echo "  --user  Install to ~/.codex/skills/ (available in all repos)"
    exit 0
    ;;
  *)
    echo "Unknown option: $MODE"
    echo "Usage: bash install_codex.sh [--repo | --user]"
    exit 1
    ;;
esac

SKIP_PATTERN="^old_|^old2_|^odl_|_old\."
installed=0
skipped=0

for src in "$COMMANDS_DIR"/*.md; do
  filename="$(basename "$src")"

  if echo "$filename" | grep -qiE "$SKIP_PATTERN"; then
    ((skipped++))
    continue
  fi

  skill_name=""
  skill_desc=""
  has_meta=false

  first_line=$(head -1 "$src")
  second_line=$(sed -n '2p' "$src")

  if [[ "$first_line" =~ ^name:[[:space:]]*(.*) ]]; then
    skill_name="${BASH_REMATCH[1]}"
    has_meta=true
    if [[ "$second_line" =~ ^description:[[:space:]]*(.*) ]]; then
      skill_desc="${BASH_REMATCH[1]}"
    fi
  fi

  if [ -z "$skill_name" ]; then
    skill_name="${filename%.md}"
  fi

  if [ -z "$skill_desc" ]; then
    heading=$(grep -m1 '^# ' "$src" 2>/dev/null || true)
    if [[ "$heading" =~ —[[:space:]]*(.*) ]]; then
      skill_desc="${BASH_REMATCH[1]}"
    else
      skill_desc="$skill_name command"
    fi
  fi

  skill_dir="$TARGET/$skill_name"
  mkdir -p "$skill_dir"

  {
    echo "---"
    echo "name: $skill_name"
    echo "description: $skill_desc"
    echo "---"
    echo ""
    if $has_meta; then
      awk 'NR<=2{next} NR==3 && /^$/{next} {print}' "$src"
    else
      cat "$src"
    fi
  } > "$skill_dir/SKILL.md"

  echo "  OK: $skill_name"
  ((installed++))
done

echo ""
echo "Installed $installed skills to $TARGET"
[ $skipped -gt 0 ] && echo "Skipped $skipped deprecated files"
echo ""
echo "Codex will detect these skills automatically."
echo "In Codex, invoke with \$skill-name (e.g. \$MVL, \$sense-making)"
