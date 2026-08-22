init:
	cat ${PWD}/.bashrc > ${HOME}/.bashrc
	cat ${PWD}/.tmux.conf > ${HOME}/.tmux.conf
	# To install tmux plugins: prefix + I
	git clone https://github.com/tmux-plugins/tpm ${HOME}/.tmux/plugins/tpm
	/bin/bash ${PWD}/starship/install.sh
	mkdir -p ${HOME}/.config
	cp ${PWD}/starship/starship.toml ${HOME}/.config/

vim:
	cp ${PWD}/.vimrc ${HOME}/
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim:
	wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
	tar xzvf nvim-linux-x86_64.tar.gz
	rm nvim-linux-x86_64.tar.gz
	sudo mv nvim-linux-x86_64/ /usr/local/
	mkdir -p ${HOME}/.config
	cp -r ${PWD}/nvim ${HOME}/.config/
	# For copy/paste on Ubuntu/Debian, same package name for Arch
	sudo apt install xsel -y
	# For tree-sitter on Debian
	# sudo apt install build-essential -y
	# On Arch
	# sudo pacman -Sy --needed base-devel

docker:
	bash ./docker/postinstall.sh

python:
	sudo apt update; sudo apt install make build-essential libssl-dev zlib1g-dev \
	libbz2-dev libreadline-dev libsqlite3-dev curl git \
	libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev libzstd-dev

.PHONY: init vim nvim docker
