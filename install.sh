#!/usr/bin/env bash
# Full installer: chezmoi + dotfiles
# Usage: curl -fsSL https://raw.githubusercontent.com/RaulRuizBolivar/dotfiles/main/install.sh | bash

set -euo pipefail

REPO="https://github.com/RaulRuizBolivar/dotfiles.git"
CHEZMOI="${CHEZMOI:-$HOME/.local/bin/chezmoi}"

echo "==> Installing chezmoi"
if [[ ! -x "$CHEZMOI" ]]; then
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
  export PATH="$HOME/.local/bin:$PATH"
fi

echo "==> Initializing from $REPO"
"$CHEZMOI" init --apply "$REPO"

echo "==> Done. Open a new shell or run: exec zsh"
