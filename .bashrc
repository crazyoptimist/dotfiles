export EDITOR=vim

# use starship as shell prompt
eval "$(starship init bash)"

bind 'TAB:menu-complete'

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

# common aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias c='clear'

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

# neovim specific
export PATH="$PATH:/usr/local/nvim-linux64/bin"

# # go specific(go1.16+)
# export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# nodejs specific(nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# # python specific(pyenv)
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# # ruby specific(rbenv)
# eval "$(~/.rbenv/bin/rbenv init - bash)"

# # terraform specific(cli auto-complete)
# complete -C /usr/local/bin/terraform terraform

# # wsl specific
# alias docker-start="sudo service docker start"
