#!/bin/bash

apt update && apt upgrade -y

# aplicativos básicos
apt install curl git wget lm-sensors htop -y
apt install python3-dev python3-pip python3-tk tk-dev libsqlite3-dev -y
apt install texstudio texlive texlive-full texlive-lang-portuguese texlive-latex-extra -y
apt install r-base -y

# docker
apt install docker.io -y

# docker-compose
apt install docker-compose -y

# zsh
apt install zsh -y
