# Linux-specific config (Arch/Omarchy)

# prime-run for hybrid GPU laptops
alias steam="prime-run flatpak run com.valvesoftware.Steam &"
alias zen="prime-run flatpak run io.github.zen_browser.zen &"

# Arch-specific
if command -v yay &>/dev/null; then
  alias y="yay"
fi

# Use system ls with color
alias ls="ls --color=auto"
