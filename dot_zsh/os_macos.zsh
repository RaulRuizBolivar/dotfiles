# macOS-specific config

# Homebrew (Apple Silicon default)
if [[ -f /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# GNU coreutils (from brew) before system tools
if [[ -d /opt/homebrew/opt/coreutils/libexec/gnubin ]]; then
  export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
fi

# ls color (BSD)
alias ls="ls -G"

# Quick look
alias ql="qlmanage -p &>/dev/null"
