source ~/.bashrc

# # wsl specific
# alias docker-start="sudo service docker start"

# node.js specific(nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# # ruby specific(rbenv)
# eval "$(~/.rbenv/bin/rbenv init - bash)"

# # python specific(pyenv)
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# export PATH="$HOME/.local/bin:$PATH"
# alias python="python3"

# # terraform specific(cli auto-complete)
# complete -C /usr/local/bin/terraform terraform

# # go specific
# export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
