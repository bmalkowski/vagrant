#!/usr/bin/env bash

apt-get install -y vim git curl
git clone https://github.com/gmarik/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim
curl https://raw.github.com/bmalkowski/dev/.vimrc > /home/vagrant/.vimrc
vim +BundleInstall +qall 2&> /dev/null
