ulimit -n 10240;
export JOBS=max;

# Use Sublime Text as the default file editor
export EDITOR='subl -w'

source ~/.profile
source ~/.alias

# Load git prompt
source ~/.git-prompt.sh

# Command Line Colors
export PS1="\u \W\e[33m\$(__git_ps1)\e[0m $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxCxegedabagacad

# Auto complete git
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Suggested by brew doctor
export PATH="/usr/local/sbin:$PATH"