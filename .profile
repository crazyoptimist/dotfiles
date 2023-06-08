source ~/.bashrc

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
# export PATH="$HOME/.local/bin:$PATH"
# alias python="python3"

# # ruby specific(rbenv)
# eval "$(~/.rbenv/bin/rbenv init - bash)"

# # terraform specific(cli auto-complete)
# complete -C /usr/local/bin/terraform terraform

# # wsl specific
# alias docker-start="sudo service docker start"
