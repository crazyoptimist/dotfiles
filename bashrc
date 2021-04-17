# comment the below line if you do not love vim
export EDITOR=vim
eval "$(starship init bash)"

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# node specific
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# git specific
alias gs="git status"
alias glog="git log"
alias gaa="git add ."
alias gc="git commit -m $1"
alias gca="git commit -a"
alias gp="git pull"
alias gd="git diff"
alias gpush="git push $1 $2"
export GPG_TTY=$(tty)

# docker specific
cleanup_docker_containers() {
  docker ps -a | grep Exited | cut -d ' ' -f1 | xargs docker rm
}

cleanup_docker_images() {
  if [ -z "$(docker images | awk '/^<none>/ {print $3}')" ]; then
    echo "You don't have any <none> tagged images."
  else
    docker rmi $(docker images | awk '/^<none>/ {print $3}')
  fi
}

alias dcb="docker-compose build"
alias dcu="docker-compose up $1"
alias dcd="docker-compose down"
alias dcps="docker-compose ps"
alias dclog="docker-compose logs -f"

alias dps="docker ps"
alias dls="docker container ls $1"
alias dils="docker image ls $1"
alias dvls="docker volume ls"
alias dnls="docker network ls"
