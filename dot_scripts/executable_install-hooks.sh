#!/usr/bin/env bash
# Add the zshrc protection hook to ~/.config/chezmoi/chezmoi.toml.
# Idempotent: re-running is safe.

set -euo pipefail

CONFIG_FILE="$HOME/.config/chezmoi/chezmoi.toml"
SCRIPT_PATH="$HOME/Projects/dotfiles/dot_scripts/executable_protect-zshrc.sh"
HOOK_MARKER="executable_protect-zshrc.sh"

if [[ ! -x "$SCRIPT_PATH" ]]; then
  echo "WARN: $SCRIPT_PATH is missing or not executable" >&2
  echo "Run 'chezmoi apply' first to materialize scripts" >&2
  exit 1
fi

mkdir -p "$(dirname "$CONFIG_FILE")"
touch "$CONFIG_FILE"

if grep -qF "$HOOK_MARKER" "$CONFIG_FILE"; then
  echo "Hook already present in $CONFIG_FILE"
  exit 0
fi

cat >> "$CONFIG_FILE" <<EOF

# Auto-added by install-hooks.sh: protects ~/.zshrc from external clobbers
[hooks]
  [hooks.apply]
    [hooks.apply.pre]
      command = "$SCRIPT_PATH"
      args = []
EOF

echo "Added zshrc protection hook to $CONFIG_FILE"
echo "Verify with: chezmoi cat-config"
