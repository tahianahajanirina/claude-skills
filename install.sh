#!/bin/bash
# install.sh — Installe les skills Claude Code globalement (Linux/macOS)
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_SKILLS="$HOME/.claude/skills"

mkdir -p "$CLAUDE_SKILLS"

for skill in "$SCRIPT_DIR"/skills/*/; do
  name=$(basename "$skill")
  target="$CLAUDE_SKILLS/$name"
  rm -rf "$target"
  ln -sf "$skill" "$target"
  echo "→ $name installé"
done

# Settings globaux (ne pas écraser si existant)
if [ ! -f "$HOME/.claude/settings.json" ]; then
  cp "$SCRIPT_DIR/settings.json" "$HOME/.claude/settings.json"
  echo "→ settings.json installé"
else
  echo "→ settings.json déjà existant, non écrasé"
fi

echo ""
echo "Done. Skills disponibles dans toutes les sessions Claude Code."
echo "Vérifier avec : ls -la ~/.claude/skills/"
