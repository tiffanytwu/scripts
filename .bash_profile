export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose # or auto to omit counts

#export PS1='\h:\w$(__git_ps1 " (%s)")\$ '

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#enable terminal colors
export CLICOLOR=1
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export COLOR_NC='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34\e[m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

export END_COLOR='\e[m'

HOST="${COLOR_PURPLE}[\u@\h] ${END_COLOR}"
TIME="${COLOR_WHITE}\t ${END_COLOR}"
LOCATION="${COLOR_BLUE}${PWD}${COLOR_END}"
BRANCH="${COLOR_YELLOW} $(__git_ps1 " (%s)") ${END_COLOR}"
SYMBOL="\n\[${COLOR_LIGHT_GREEN}\]→ \[${COLOR_NC}\]"

PS1=$TIME$HOST$LOCATION$BRANCH$SYMBOL
