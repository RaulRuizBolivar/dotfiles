# Dev tools init

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# zoxide
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

# mise (polyglot version manager)
if command -v mise &>/dev/null; then
  eval "$(mise activate zsh)"
fi

# fzf
if [[ -f ~/.fzf.zsh ]]; then
  source ~/.fzf.zsh
fi
