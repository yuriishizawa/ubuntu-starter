#!/bin/bash

apt update && apt upgrade -y

# aplicativos básicos
apt install curl git wget lm-sensors htop -y
apt install python3-dev python3-pip python3-tk tk-dev libsqlite3-dev -y
apt install texstudio texlive texlive-full texlive-lang-portuguese texlive-latex-extra -y
apt install r-base -y

# poetry
curl -sSL https://install.python-poetry.org | python3 -

# docker
apt install docker.io -y

# docker-compose
apt install docker-compose -y

# pyenv
curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# rye
curl -sSf https://rye.astral.sh/get | bash

# zsh
apt install zsh -y

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # https://dev.to/henriquemsimoes/instalando-e-configurando-zsh-e-oh-my-zsh-4bem

# Spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt" --depth=1
ln -s "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship.zsh-theme"

# zsh-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
