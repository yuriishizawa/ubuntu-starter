#!/bin/bash

apt update && apt upgrade -y

apt install arduino bleachbit qgis curl wget htop python3-dev python3-pip fritzing texstudio texlive gimp texlive-full obs-studio kdenlive texlive-lang-portuguese texlive-latex-extra vlc r-base telegram-desktop git -y
snap install spotify
snap install discord
snap install slack --classic
snap install sublime-text --classic
snap install code --classic

wget -c https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1106-amd64.deb
wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

anaconda_version=$(curl -s https://repo.anaconda.com/archive/ | grep -e 'Anaconda3-2021.[0-2][0-9]-Linux-x86' | tail -n 1 | cut -d "\"" -f 2)

wget -c -O Anaconda.sh https://repo.anaconda.com/archive/$anaconda_version
chmod a+x ./Anaconda.sh
./Anaconda.sh

dpkg -i *.deb

apt install ubuntu-restricted-extras
