auto_commit:
	git add . && git commit -m "Update" && git push

install:
	apt-get install python3-pip -y && pip install pynvim && \
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

install_nvim:
	nvm install --lts && apt-get install vim nvim -y

convert_vim_config:
	cp vimrc .vimrc

copy_nvim:
	cp .vimrc .config/nvim/init.vim

install_vim_plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
			sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plu
      				 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
