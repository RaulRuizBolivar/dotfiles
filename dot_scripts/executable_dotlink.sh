#!/usr/bin/env bash
# Symlink a file or directory from this repo into a target location.
# Usage: dotlink <relative-source-path> [target-base]
# Default target-base: $HOME/.config/dotfiles

set -euo pipefail

DOTFILES_DIR="${DOTFILES_DIR:-$HOME/Projects/dotfiles}"
TARGET_BASE="${2:-$HOME/.config/dotfiles}"

if [[ -z "${1:-}" ]]; then
  echo "Usage: dotlink <relative-source-path> [target-base]" >&2
  exit 1
fi

src="$DOTFILES_DIR/$1"
dst="$TARGET_BASE/$1"

if [[ ! -e "$src" && ! -L "$src" ]]; then
  echo "Source not found: $src" >&2
  exit 1
fi

mkdir -p "$(dirname "$dst")"
if [[ -e "$dst" && ! -L "$dst" ]]; then
  echo "BACKUP: $dst -> ${dst}.bak"
  mv "$dst" "${dst}.bak"
fi
ln -sfn "$src" "$dst"
echo "linked: $dst -> $src"
