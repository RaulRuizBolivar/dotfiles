# Environment variables (common to all OSes)

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

# Local bin
export PATH="$HOME/.local/bin:$HOME/.scripts:$PATH"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# History
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Less
export LESS="-R"
