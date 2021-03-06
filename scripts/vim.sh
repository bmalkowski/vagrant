#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "Usage: `basename $0` <github_url> [home_dir]"
  exit 1
fi

github_url="$1"

echo ">>> Installing vim"
sudo apt-get install -y vim

echo ">>> Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git /home/vagrant/.vim/bundle/Vundle.vim

echo ">>> Configuring vim"
curl --silent -L $github_url/configs/vimrc > /home/vagrant/.vimrc

mkdir -p /home/vagrant/.vim/backup
mkdir -p /home/vagrant/.vim/swap
sudo chown -R vagrant:vagrant /home/vagrant/.vimrc
sudo chown -R vagrant:vagrant /home/vagrant/.vim

sudo su - vagrant -c 'vim +BundleInstall +qall'

