# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

Supports **Linux** (Arch/Omarchy) and **macOS** with OS-specific overrides.

## Quick start (new machine)

```bash
# Install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin

# Initialize from this repo
chezmoi init https://github.com/RaulRuizBolivar/dotfiles.git
chezmoi apply -v
```

## Structure

```
.
├── dot_zshrc.tmpl                 # Main zsh config (templated, OS-aware)
├── dot_zsh/                       # Modular zsh snippets
│   ├── aliases.zsh                # Common aliases
│   ├── exports.zsh                # Environment vars
│   ├── prompt.zsh                 # Prompt config
│   ├── os_linux.zsh               # Linux-only (Arch, prime-run, etc.)
│   ├── os_macos.zsh               # macOS-only (brew, gnu coreutils, etc.)
│   ├── tools.zsh                  # nvm, pj, zoxide, fzf, mise
│   └── private_local.tmpl         # Secrets (gitignored after init)
├── private_dot_config/
│   ├── opencode/                  # OpenCode config
│   └── claude/                    # Claude config
├── dot_scripts/                   # User scripts (added to PATH)
│   ├── deploy.sh
│   └── pokemon-random.sh
├── run_on_linux.sh.tmpl           # One-shot setup script (Linux)
├── run_on_macos.sh.tmpl           # One-shot setup script (macOS)
├── kitty/                         # Legacy (pre-chezmoi, symlinked manually)
├── zshrc/                         # Legacy (pre-chezmoi, symlinked manually)
├── install.sh                     # Full installer (chezmoi + deps)
└── uninstall.sh                   # Remove all symlinks
```

## Daily workflow

```bash
chezmoi edit ~/.zshrc     # edit any managed file
chezmoi diff              # see pending changes
chezmoi apply             # apply changes
chezmoi git push          # push to GitHub
chezmoi update -v         # pull + apply
```

## Secrets

Secrets live in `private_dot_zsh/private_local.tmpl` (mode 0600).
Templated with chezmoi, not committed. Use `chezmoi cd` to add machine-specific values.

## Legacy files

The `kitty/` and `zshrc/` directories are pre-chezmoi, symlinked from `~/.config/dotfiles/`.
They will be migrated into the chezmoi-managed structure incrementally.
