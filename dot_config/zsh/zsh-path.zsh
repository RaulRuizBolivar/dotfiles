test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[   ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# Load Angular CLI autocompletion.
source <(ng completion script)

# Load zoxide
eval "$(zoxide init zsh)"


. "$HOME/.local/bin/env"
