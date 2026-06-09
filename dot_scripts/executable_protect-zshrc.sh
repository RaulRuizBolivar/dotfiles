#!/usr/bin/env bash
# Verify ~/.zshrc is the chezmoi-managed one. If not, restore it.
# IMPORTANT: Do NOT call `chezmoi apply` from here - it would trigger this hook
# again in an infinite loop. Just write the file directly.
#
# This is meant to be run as a chezmoi pre-apply hook.

set -euo pipefail

# Note: chezmoi sets CHEZMOI=1 in env when running hooks.
# Use a different name to avoid collision.
CHEZMOI_BIN="${DOTFILES_PROTECT_BIN:-$HOME/.local/bin/chezmoi}"
SOURCE_DIR="${DOTFILES_SOURCE_DIR:-$HOME/Projects/dotfiles}"
SENTINEL="_DOTFILES_ZSHRC_PROTECTED"
ZSHRC_SOURCE="$SOURCE_DIR/dot_zshrc"

# If already protected, do nothing.
if [[ -f "$HOME/.zshrc" ]] && grep -qF "$SENTINEL" "$HOME/.zshrc"; then
  echo "OK: ~/.zshrc is chezmoi-managed (sentinel found)"
  exit 0
fi

# If source file is missing, nothing we can do.
if [[ ! -f "$ZSHRC_SOURCE" ]]; then
  echo "WARN: source not found at $ZSHRC_SOURCE, skipping" >&2
  exit 0
fi

# Render the template and write directly to ~/.zshrc.
# Run chezmoi from the source dir so template paths resolve, and
# capture stdout to file. NOT `chezmoi apply` (would re-trigger this hook).
if [[ -x "$CHEZMOI_BIN" ]]; then
  (cd "$SOURCE_DIR" && "$CHEZMOI_BIN" execute-template < dot_zshrc > "$HOME/.zshrc")
  echo "REPAIR: ~/.zshrc restored from $ZSHRC_SOURCE"
else
  cp "$ZSHRC_SOURCE" "$HOME/.zshrc"
  echo "REPAIR: ~/.zshrc restored (raw copy)"
fi
exit 0
