bootstrap:
	cat ${PWD}/bashrc > ${HOME}/.bashrc
	cat ${PWD}/profile > ${HOME}/.profile
	sudo /bin/bash ${PWD}/starship/install.sh
	cat ${PWD}/vimrc > ${HOME}/.vimrc
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cat ${PWD}/tmux.conf > ${HOME}/.tmux.conf
	mkdir -p ${HOME}/.config
	cp ${PWD}/starship/starship.toml ${HOME}/.config/
