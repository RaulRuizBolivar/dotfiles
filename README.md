# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

Targets **macOS** (primary). Linux entries are kept as inspiration only.

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
├── dot_zshrc                          # ~/.zshrc (p10k instant prompt + sources ~/.config/zsh)
├── dot_config/
│   ├── zsh/
│   │   ├── zshrc.zsh                  # main zsh loader (omz, theme, env)
│   │   ├── zsh-alias.zsh              # aliases (git, ng, docker, claude variants)
│   │   ├── zsh-path.zsh               # iterm2, p10k, ng completion, zoxide, uv env
│   │   └── claude-vscode.sh           # auto-launch claude inside vscode terminal
│   └── dotfiles/
│       └── pokemon-random.sh          # shiny pokemon greeting on shell start
├── private_dot_config/opencode/       # private: figma API key, ollama endpoint
│   ├── opencode.json.tmpl             # opencode config (templated for figma key)
│   └── package.json
├── install.sh                         # Full installer (chezmoi + apply)
├── uninstall.sh                       # Remove all symlinks
└── .chezmoiignore                     # Skip meta files from chezmoi
```

## Daily workflow

```bash
chezmoi edit ~/.zshrc                 # edit any managed file
chezmoi edit --apply ~                # same + auto-apply on save
chezmoi diff                          # see pending changes vs applied state
chezmoi apply                         # apply changes
chezmoi update -v                     # pull + apply
chezmoi git push                      # sync to GitHub
```

## Secrets

The `private_dot_config/opencode/opencode.json.tmpl` template uses `{{ .figma_api_key }}`.
Set it in `~/.config/chezmoi/chezmoi.toml`:

```toml
[data]
  figma_api_key = "figd_xxx"
```

Same for any other private values (e.g. an internal ollama baseURL).

## Notes

- `~/.config/zsh/` is fully managed by chezmoi. Edits outside `chezmoi edit` will be
  overwritten on next apply.
- `dot_zshrc` adds `~/.local/bin` to PATH so `chezmoi` and other user tools are available.
- Tab-title-to-git-branch hook runs only when `$TERM_PROGRAM == "vscode"`.
- The `claude-vscode.sh` widget auto-launches `claude --dangerously-skip-permissions`
  on a new prompt line inside vscode's integrated terminal.
