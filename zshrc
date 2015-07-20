export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pygmalion"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" && nvm use 0.10
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" && export PATH="$HOME/.rvm/bin:$PATH"


export EDITOR='vim'

alias tmux="TERM=screen-256color-bce tmux"

if type "vagrant" > /dev/null; then
  alias vu="vagrant up"
  alias vul="vagrant up --provider=lxc"
  alias vh="vagrant halt"
  alias vsus="vagrant suspend"
  alias vr="vagrant resume"
  alias vre="vagrant reload"
  alias vs="vagrant ssh"
  alias vstat="vagrant status"
  alias vp="vagrant ssh -c 'cd project'"
fi

alias vzsh="vim ~/.zshrc"

# Docker compose alias
if type "docker-compose" > /dev/null; then
# dc == docker-compose
alias dc="docker-compose"
compdef dc=docker-compose
fi

# use custom ssh login with if ssh file exist
function ssh () {
  if [[ -s "ssh" ]] then
    command ./ssh "$@"
  else
    command ssh "$@"
  fi
}

# Git alias
alias git-clean='git branch --merged master | ' \
                'grep -v "\* master" | ' \
                'xargs -n 1 git branch -d'
