init:
	cat ${PWD}/.bashrc > ${HOME}/.bashrc
	cat ${PWD}/.tmux.conf > ${HOME}/.tmux.conf
	sudo /bin/bash ${PWD}/starship/install.sh
	mkdir -p ${HOME}/.config
	cp ${PWD}/starship/starship.toml ${HOME}/.config/

vim:
	cp ${PWD}/.vimrc ${HOME}/
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim:
	wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm nvim-linux64.tar.gz
	sudo mv nvim-linux64/ /usr/local/
	mkdir -p ${HOME}/.config
	cp -r ${PWD}/nvim ${HOME}/.config/
	# For copy/paste on Ubuntu/Debian, same package name for Arch
	sudo apt install xsel -y
	# For tree-sitter on Debian
	# sudo apt install build-essential -y

.PHONY: init vim nvim
