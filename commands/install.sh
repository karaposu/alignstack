#!/bin/bash
# Install AlignStack slash commands and hooks for Claude Code
# Usage: curl -sL https://raw.githubusercontent.com/karaposu/alignstack/main/commands/install.sh | bash

set -e

REPO_URL="https://raw.githubusercontent.com/karaposu/alignstack/main"
COMMANDS_DIR="$HOME/.claude/commands"
HOOKS_DIR="$HOME/.claude/hooks"

mkdir -p "$COMMANDS_DIR"
mkdir -p "$HOOKS_DIR"

# --- Slash Commands ---

echo "Installing slash commands..."

commands=(
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

for cmd in "${commands[@]}"; do
  echo "  downloading $cmd"
  curl -sL "$REPO_URL/commands/$cmd" -o "$COMMANDS_DIR/$cmd"
done

# --- Hooks ---

echo ""
echo "Installing hooks..."

hooks=(
  devdocs_metadata_appender.sh
)

for hook in "${hooks[@]}"; do
  echo "  downloading $hook"
  curl -sL "$REPO_URL/hooks/$hook" -o "$HOOKS_DIR/$hook"
  chmod +x "$HOOKS_DIR/$hook"
done

# --- Summary ---

echo ""
echo "Done. Installed ${#commands[@]} slash commands to $COMMANDS_DIR"
echo "Done. Installed ${#hooks[@]} hooks to $HOOKS_DIR"
echo ""
echo "Slash commands: /devdocs-foundation, /devdocs-foundation-concepts, /devdocs-foundation-simplified-concepts, /devdocs-foundation-identify-modules, /devdocs-foundation-architecture, /elaborate, /task-desc, /task-plan, /critic, /critic-d, /sense-making, /innovate, /td-critique, /decompose, /explore, /wayfinding, /inquiry, /comprehend, /MVL, /arch-small-summary, /arch-intro, /arch-traces, /arch-traces-2, /arch-top-improvements, /dead-code-index, /dead-code-concepts, /roadmap, /overview-report, /align, /align-modes, /devdocs-archivist"
echo ""
echo "To activate the devdocs metadata hook, add this to .claude/settings.json:"
echo ""
echo '  {"hooks":{"PreToolUse":[{"matcher":"Write","hooks":[{"type":"command","command":"~/.claude/hooks/devdocs_metadata_appender.sh"}]}]}}'
echo ""
echo "Using Cursor? You can simply run:"
echo ""
echo "  mkdir -p ~/.cursor/commands && cp ~/.claude/commands/*.md ~/.cursor/commands/"
echo ""
echo "Or for project-specific:"
echo "  mkdir -p .cursor/commands && cp ~/.claude/commands/*.md .cursor/commands/"
