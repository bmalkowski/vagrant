#!/usr/bin/env bash

apt-get install -y vim git

# Vundle Install
git clone https://github.com/gmarik/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim

# Config Files
curl https://raw.github.com/bmalkowski/dev/.vimrc > /home/vagrant/.vimrc
