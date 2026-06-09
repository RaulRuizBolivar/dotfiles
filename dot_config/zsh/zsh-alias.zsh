alias lgit="lazygit"
alias lgt="lazygit"
alias lg="lazygit"
alias src="clear ; source ~/.zshrc"
alias n="$EDITOR"
alias dcu="docker compose up"
alias dcub="docker compose up --build"
alias dcubd="docker compose up --build -d"
alias reset="echo 'Reseting environment...' && rm -rvf node_modules/ && rm -rvf .angular && rm -rvf dist && echo 'Installing dependencies...' && npm install && echo 'Dependencies installed' && git restore package-lock.json"
alias build="npm run build:all"
alias zshrc="$EDITOR ~/.zshrc"
alias zsh="z zsh"
alias yz="yazi"
alias y="yazi"
# ls: eza is the modern exa replacement (Linux). Falls back gracefully if missing.
if command -v eza &>/dev/null; then
  alias ls="eza --icons"
elif command -v exa &>/dev/null; then
  alias ls="exa --icons"
else
  alias ls="ls --color=auto"
fi
alias ll="ls -lh"
alias la="ls -lha"
alias claude-danger='clear ; claude --dangerously-skip-permissions'
alias clau='clear ; claude --dangerously-skip-permissions'
alias claude-ollama='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude'
alias claude-glm='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude --model glm-4.7-flash'
alias claude-coder2='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude --model qwen2.5-coder:14b'
alias claude-coder='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude --model qwen2.5-coder:14b-32k'
