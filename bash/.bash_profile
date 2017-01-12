# file: ~/.bash_profile

# set PATH variable
LOCAL=~/Local
PATH=$LOCAL/Homebrew/sbin:$PATH
PATH=$LOCAL/Homebrew/bin:$PATH
PATH=$LOCAL/texbin:$PATH
PATH=$LOCAL/bin:$PATH

# export PATH variable
export PATH

# add homebrew bash completion
if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
    . $(brew --prefix)/etc/bash_completion
fi

# homebrew configurations
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

# stop OS X from putting ._* files in tar files
export COPYFILE_DISABLE=1

# stop OS X from saving bash sessions
touch ~/.bash_sessions_disable

# run bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
