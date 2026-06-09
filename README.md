# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

Supports **Linux** (Arch/Omarchy) and **macOS** with OS-specific overrides via templating.

## Quick start (new machine)

```bash
# One-line install
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply RaulRuizBolivar
```

Or manual:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin
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
│   ├── tools.zsh                  # nvm, zoxide, fzf, mise
│   ├── os_linux.zsh               # Linux-only
│   ├── os_macos.zsh               # macOS-only
│   └── local.zsh                  # Machine-specific (NOT tracked)
├── private_dot_config/
│   ├── opencode/                  # OpenCode config
│   └── claude/                    # Claude config
├── dot_scripts/                   # User scripts (added to PATH)
│   └── executable_dotlink.sh      # Helper: symlink repo files to ~/.config
├── run_on_linux.sh.tmpl           # One-shot setup (Linux only)
├── run_on_macos.sh.tmpl           # One-shot setup (macOS only)
├── install.sh                     # Full installer
└── uninstall.sh                   # Remove all symlinks
```

## Daily workflow

```bash
chezmoi edit ~/.zshrc     # edit any managed file (opens source, then apply)
chezmoi edit --apply ~    # same + auto-apply on save
chezmoi diff              # see pending changes vs applied state
chezmoi apply             # apply changes
chezmoi update -v         # pull + apply (use on a second machine)
chezmoi git push          # push to GitHub
```

## OS-specific behavior

Templating with `.chezmoi.os` selects per-OS config:

- `dot_zshrc.tmpl` sources `os_{{ .chezmoi.os }}.zsh` (`os_linux.zsh` or `os_macos.zsh`)
- `run_on_{linux,macos}.sh.tmpl` are guarded with the same check, so only the matching OS runs

## Secrets / machine-specific

Use `dot_zsh/local.zsh` for machine-only overrides. It's NOT gitignored yet — add it to `.gitignore` per fork if you commit secrets there, or use `chezmoi cd` to create a `private_dot_zsh/private_local.tmpl` with mode 0600.

## Migrating your real dotfiles

On your Mac, after the first apply:

1. Copy your existing configs into the source dir:
   ```bash
   chezmoi cd          # jumps to /home/raul/Projects/dotfiles
   # then add files with:
   chezmoi add ~/.zshrc
   chezmoi add ~/.config/opencode
   chezmoi add --type=file ~/path/to/secret
   ```
2. Or manually edit the source files and `chezmoi re-add` them.
3. Then `chezmoi diff` to review, `chezmoi apply` to test, `chezmoi git push` to sync.
