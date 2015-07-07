export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" && nvm use 0.10
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=""\
  ":/bin" \
  ":/sbin" \
  ":/usr/bin" \
  ":/usr/games" \
  ":/usr/local/bin" \
  ":/usr/local/games" \
  ":/usr/local/heroku/bin" \
  ":/usr/local/sbin" \
  ":/usr/sbin"

export EDITOR='vim'

alias tmux="TERM=screen-256color-bce tmux"

alias vu="vagrant up"
alias vul="vagrant up --provider=lxc"
alias vh="vagrant halt"
alias vsus="vagrant suspend"
alias vr="vagrant resume"
alias vre="vagrant reload"
alias vs="vagrant ssh"
alias vstat="vagrant status"
alias vp="vagrant ssh -c 'cd project'"

alias vzsh="vim ~/.zshrc"

# Docker compose alias

# dc == docker-compose
alias dc="docker-compose"
compdef dc=docker-compose

# use custom ssh login with docker machines
alias dssh="./ssh"

# Git alias
alias git-clean='git branch --merged master | ' \
                'grep -v "\* master" | ' \
                'xargs -n 1 git branch -d'
