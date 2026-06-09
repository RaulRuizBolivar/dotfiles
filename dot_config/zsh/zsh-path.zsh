test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Powerlevel10k theme (loaded manually, not via omz themes/)
if [[ -f ~/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source ~/powerlevel10k/powerlevel10k.zsh-theme
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Load Angular CLI autocompletion.
command -v ng &>/dev/null && source <(ng completion script)

# Load zoxide
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"


# mise env file (only if mise has generated it)
[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"
