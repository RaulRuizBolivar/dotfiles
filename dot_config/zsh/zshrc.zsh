export ZSH="$HOME/.oh-my-zsh"

sh ~/.config/dotfiles/pokemon-random.sh

# Theme is loaded manually below (p10k) - keep omz default here to avoid errors
ZSH_THEME="robbyrussell"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_DEFAULT_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exlude .git"

plugins=()

source $ZSH/oh-my-zsh.sh
export EDITOR=nvim
export VISUAL="$EDITOR"
export SERVER="192.168.68.221:11434"


#### Config files
source ~/.config/zsh/zsh-alias.zsh
source ~/.config/zsh/zsh-path.zsh
source ~/.config/zsh/claude-vscode.sh

