export EDITOR=vim

# use starship as shell prompt
eval "$(starship init zsh)"

# dir/file coloring
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# miss this awesome thing in bash
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias c='clear'

# git specific
alias gaa="git add ."
alias gcm="git commit"
alias gd="git diff"
alias glog="git log"
alias gp="git pull"
alias gpush="git push"
alias gs="git status"
alias gstash="git stash"
alias gsw="git switch"
export GPG_TTY=$(tty)

# docker specific
cleanup_docker_containers() {
  if [ -z "$(docker ps -a | grep -e Exited -e Created)" ]; then
    echo "Hooray, there is no dangling container!"
  else
    docker ps -a | grep -e Exited -e Created | cut -d ' ' -f1 | xargs docker rm
  fi
}

cleanup_docker_images() {
  if [ -z "$(docker images | awk '/^<none>/ {print $3}')" ]; then
    echo "Hooray, there is no <none> tagged image!"
  else
    docker rmi $(docker images | awk '/^<none>/ {print $3}')
  fi
}

alias dcb="docker compose build"
alias dcu="docker compose up $1"
alias dcd="docker compose down"
alias dcps="docker compose ps"
alias dclog="docker compose logs -f"

alias dps="docker ps"
alias dls="docker container ls $1"
alias dils="docker image ls $1"
alias dvls="docker volume ls"
alias dnls="docker network ls"

# # go specific(go1.16+)
# export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# nodejs specific(nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# # python specific(pyenv)
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# # ruby specific(rbenv)
# eval "$(~/.rbenv/bin/rbenv init - bash)"

# # terraform specific(cli auto-complete)
# complete -C /usr/local/bin/terraform terraform
