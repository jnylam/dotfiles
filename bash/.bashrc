# file: ~/.bashrc

# guard against running in non-interactive session
[ -z "$PS1" ] && return

# update window size variables on resize
shopt -s checkwinsize

# guard against overwriting files with mv and cp
set -o noclobber

# notify when a background job is completed
set -o notify

# define color names
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
PURPLE='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'
BBLACK='\e[1;30m'
BRED='\e[1;31m'
BGREEN='\e[1;32m'
BYELLOW='\e[1;33m'
BBLUE='\e[1;34m'
BPURPLE='\e[1;35m'
BCYAN='\e[1;36m'
BWHITE='\e[1;37m'
RESET='\e[m'

# set prompt; default: PS1='\h:\W \u\$ '
export PS1="\[$BRED\]\W \$\[$RESET\] "
export PS2="\[$BRED\]>\[$RESET\] "

# set aliases
if [[ "$OSTYPE" == "linux"* ]]; then
    alias ls="ls --color=auto -F"
    alias ll="ls --color=auto -Fhl"
    alias la="ls --color=auto -AF"
    alias lla="ls --color=auto -aFhl"
    alias grep="grep --color=auto"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export CLICOLOR=1
    alias ls="/bin/ls -F"
    alias ll="/bin/ls -FlhO"
    alias la="/bin/ls -FA"
    alias lla="/bin/ls -FlahO@e"
fi

# enable history navigation with up down arrows
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
