# Prompt config

# Powerlevel10k theme load (if installed)
if [[ -f ~/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source ~/powerlevel10k/powerlevel10k.zsh-theme
fi

# Angular CLI autocompletion
if command -v ng &>/dev/null; then
  source <(ng completion script 2>/dev/null)
fi

# pj plugin project paths
PROJECT_PATHS=(~/Developer/)
