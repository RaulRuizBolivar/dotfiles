#!/usr/bin/env bash
{{- /*
  Force executable mode on this script.
*/ -}}
# Symlink legacy files into the right place
# (kitty config and zshrc legacy are outside chezmoi for now)

set -euo pipefail

DOTFILES_DIR="$HOME/Projects/dotfiles"
TARGET_DIR="$HOME/.config/dotfiles"

mkdir -p "$TARGET_DIR"

link() {
  local src="$DOTFILES_DIR/$1"
  local dst="$TARGET_DIR/$1"
  mkdir -p "$(dirname "$dst")"
  if [[ -e "$dst" && ! -L "$dst" ]]; then
    echo "BACKUP: $dst -> ${dst}.bak"
    mv "$dst" "${dst}.bak"
  fi
  ln -sf "$src" "$dst"
  echo "linked: $dst -> $src"
}

link "kitty"
link "zshrc"
link "pokemon-random.sh"
