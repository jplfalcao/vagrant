#!/usr/bin/env bash
# Autor: João PauLo Falcão
# Github: https://github.com/jplfalcao
# Data de criação: 02/09/2023
# Data de modificação: 03/09/2023
# Versão: 1.1

# Atualizando o sistema e instalando alguns pacotes.
apt-get update && apt-get upgrade -y
apt-get install -y bash-completion htop vim tmux
apt-get autoclean -y && sudo apt-get autoremove -y

# Modificando o fuso horário.
timedatectl set-timezone America/Recife

# Adicionando recursos ao `vim`, dentro do arquivo /etc/vim/vimrc.
echo -e "syntax on\nset number\nset autoindent\nset tabstop=4\nset paste"\
| tee -a /etc/vim/vimrc

# Adicionando aliases ao arquivo /etc/bash.bashrc.
echo -e "alias rm='rm -i'\nalias cp='cp -i'\nalias mv='mv -i'\nalias \
grep='grep --color=auto'\nalias ls='ls --color=auto'\nalias vi='/usr/bin/vim'" \
| tee -a /etc/bash.bashrc
source /etc/bash.bashrc
