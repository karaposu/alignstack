#!/bin/bash
# Install AlignStack slash commands for Claude Code
# Usage: curl -sL https://raw.githubusercontent.com/karaposu/alignstack/main/commands/install.sh | bash

set -e

BASE_URL="https://raw.githubusercontent.com/karaposu/alignstack/main/commands"
TARGET_DIR="$HOME/.claude/commands"

mkdir -p "$TARGET_DIR"

commands=(
  elaborate.md
  task-desc.md
  task-plan.md
  critic.md
  critic-d.md
  sense-making.md
  arch-small-summary.md
  arch-intro.md
  arch-traces.md
  arch-top-improvements.md
)

for cmd in "${commands[@]}"; do
  echo "  downloading $cmd"
  curl -sL "$BASE_URL/$cmd" -o "$TARGET_DIR/$cmd"
done

echo ""
echo "Done. Installed ${#commands[@]} slash commands to $TARGET_DIR"
echo "Available in Claude Code: /elaborate, /task-desc, /task-plan, /critic, /critic-d, /sense-making, /arch-small-summary, /arch-intro, /arch-traces, /arch-top-improvements"
