bootstrap:
	cat ${PWD}/bashrc > ${HOME}/.bashrc
	cat ${PWD}/profile > ${HOME}/.profile
	cat ${PWD}/tmux.conf > ${HOME}/.tmux.conf
	cat ${PWD}/vimrc > ${HOME}/.vimrc
	${PWD}/starship/install.sh
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
