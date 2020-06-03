# If you come from bash you might have to change your $PATH.
export PATH=$PATH:~/.cargo/bin:/home/linuxbrew/.linuxbrew/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/aymswick/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="awesomepanda"

# use 256bit color
export TERM=xterm-256color

# Dust is a rust-based, visual du
alias du="dust"

# Exa is slightly better ls
alias ls="exa"
alias ll="exa -la"
alias tree="exa --tree"

# check which app using a port
alias ports="netstat -tulpn | grep "

# cat the todo list
alias todo="batcat -n --color auto --style full ~/notes/todo.org"

# batcat is prettier cat
alias cat="batcat -n --color auto --style full"

alias open="xdg-open"

eval "$(starship init zsh)"

echo -e "\nRunning Terminals:"
tmux ls

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting zsh-vim-mode hacker-quotes)

source /home/aymswick/.config/broot/launcher/bash/br

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/linuxbrew/.linuxbrew/Cellar/terraform/0.12.24/bin/terraform terraform

# pmbootstrap tab completion
autoload bashcompinit
bashcompinit
eval "$(register-python-argcomplete pmbootstrap)"

# added by pipx (https://github.com/pipxproject/pipx)
export PATH="/home/aymswick/.local/bin:$PATH"
