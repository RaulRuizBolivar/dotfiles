#!/usr/bin/env bash
# Remove all chezmoi-managed symlinks and config
# WARNING: this will not restore your previous files

set -euo pipefail

CHEZMOI="${CHEZMOI:-$HOME/.local/bin/chezmoi}"

if [[ -x "$CHEZMOI" ]]; then
  echo "==> Running chezmoi purge"
  "$CHEZMOI" purge
else
  echo "==> Removing chezmoi config"
  rm -rf ~/.config/chezmoi
fi

echo "==> Removing managed dotfiles"
rm -f ~/.zshrc
rm -rf ~/.zsh
rm -rf ~/.config/opencode
rm -rf ~/.config/claude

echo "==> Done."
