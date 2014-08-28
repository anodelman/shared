alias ls='ls -G'
source ~/.git-completion.bash
PRE='\[\033['
POST='m\]'
COL_LASTEXIT="${PRE}01;41;37${POST}" # last command exit value
COL_PWD="${PRE}00;01;36${POST}" # current directory
COL_DEFAULT="${PRE}00${POST}" # back to default colors
PSGIT='$(__git_ps1 " (%s)")'
export PS1="\[\033[0;36m\]\u@\h \[\033[0;32m\]\W\[\033[0;35m\]$PSGIT\[\033[0m\]\$ "
