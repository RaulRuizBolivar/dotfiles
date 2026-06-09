alias lgit="lazygit"
alias lgt="lazygit"
alias lg="lazygit"
alias src="clear ; source ~/.zshrc"
alias n="$EDITOR"
alias ngs="ng serve arbomap-client"
alias ngsc="ng serve --port 5200 arbomap-config-tecnigral"
alias ngsm="ng serve --port 6200 arbomap-mobile"
alias dcu="docker compose up"
alias dcub="docker compose up --build"
alias dcubd="docker compose up --build -d"
alias reset="echo 'Reseting environment...' && rm -rvf node_modules/ && rm -rvf .angular && rm -rvf dist && echo 'Installing dependencies...' && npm install && echo 'Dependencies installed' && git restore package-lock.json"
alias build="npm run build:all"
alias rngs="reset && ng serve arbomap-client"
alias rngsc="reset && ng serve --port 5200 arbomap-config-tecnigral"
alias rngsm="reset && ng serve --port 6200 arbomap-mobile"
alias zshrc="$EDITOR ~/.zshrc"
alias zsh="z zsh"
alias aero="$EDITOR ~/.config/aerospace/aerospace.toml"
alias yz="yazi"
alias y="yazi"
alias ls="exa --icons"
alias ll="ls -lh"
alias la="ls -lha"
alias claude-danger='clear ; claude --dangerously-skip-permissions'
alias clau='clear ; claude --dangerously-skip-permissions'
alias claude-ollama='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude'
alias claude-glm='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude --model glm-4.7-flash'
alias claude-coder2='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude --model qwen2.5-coder:14b'
alias claude-coder='ANTHROPIC_BASE_URL="http://192.168.68.221:11434" ANTHROPIC_AUTH_TOKEN="ollama" ANTHROPIC_API_KEY="" claude --model qwen2.5-coder:14b-32k'
