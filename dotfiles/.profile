alias ls='ls -G'
alias bi='bundle install --path vendor/bundle'
alias bu='bundle update'
alias be='bundle exec'
alias bc='rm -rf vendor/bundle Gemfile.lock'
alias bic='rm -rf vendor/bundle Gemfile.lock; bundle install --path vendor/bundle'
alias brake="bundle exec rake"
alias gg="git log --pretty=format:'%C(yellow)%h %C(red)%ad %C(blue)%an%C(green)%d %C(reset)%s' --date=short"

function git-branch-delete {
  git branch -d $1
  git push anode :$1
}

function git-tag-delete-on-origin {
  git tag -d $1
  git push origin :$1
}
function git-branch-delete-on-origin {
  git branch -d $1
  git push origin :$1
}


source ~/.git-completion.bash
PRE='\[\033['
POST='m\]'
COL_LASTEXIT="${PRE}01;41;37${POST}" # last command exit value
COL_PWD="${PRE}00;01;36${POST}" # current directory
COL_DEFAULT="${PRE}00${POST}" # back to default colors
PSGIT='$(__git_ps1 " (%s)")'
export PS1="\[\033[0;36m\]\u@\h \[\033[0;32m\]\W\[\033[0;35m\]$PSGIT\[\033[0m\]\$ "
