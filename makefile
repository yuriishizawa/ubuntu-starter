auto_commit:
	git add . && git commit -m "Update" && git push

install_vim:
	apt-get install python3-pip -y && pip install pynvim && \
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

copy_vim_config:
	cp vimrc ~/.vimrc

install_vim_plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
