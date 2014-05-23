#!/usr/bin/env bash

echo ">>> Installing ZSH"
sudo apt-get install -y zsh

echo ">>> Installing Oh My ZSH"
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
sudo chown -R vagrant:vagrant /home/vagrant/.oh-my-zsh
sudo chown -R vagrant:vagrant /home/vagrant/.zshrc
sudo chsh -s $(which zsh) vagrant

