#!/bin/bash

apt update && apt upgrade -y

# aplicativos básicos
apt install curl git wget lm-sensors htop python3-dev python3-pip python3-tk tk-dev libsqlite3-dev gimp obs-studio vlc r-base -y
snap install spotify
snap install sublime-text --classic
snap install code --classic

# LaTeX
# apt install texstudio texlive texlive-full texlive-lang-portuguese texlive-latex-extra

# rstudio_version=$(curl -s https://posit.co/download/rstudio-desktop/ | grep -P 'rstudio-.*\.deb' -o | sort | tail -n 1)
# wget -c https://download1.rstudio.org/desktop/bionic/amd64/$rstudio_version

# anaconda_version=$(curl -s https://repo.anaconda.com/archive/ | grep -e 'Anaconda3-20.*-Linux-x86_64\.sh' | sort | tail -n 1| cut -d "\"" -f 2)

# wget -c -O Anaconda.sh https://repo.anaconda.com/archive/$anaconda_version
# chmod a+x ./Anaconda.sh
# ./Anaconda.sh

# dpkg -i *.deb

# extras
apt install ubuntu-restricted-extras -y

# docker
apt install docker.io -y

# docker-compose
apt install docker-compose -y

# poetry
curl -sSL https://install.python-poetry.org | python3 -

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# zsh
apt install zsh -y

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # https://dev.to/henriquemsimoes/instalando-e-configurando-zsh-e-oh-my-zsh-4bem
