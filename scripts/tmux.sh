#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "Usage: `basename $0` <github_url>"
  exit 1
fi

github_url="$1"

echo ">>> Installing tmux"
sudo apt-get install -y tmux 

echo ">>> Configuring tmux"
curl --silent -L $github_url/configs/tmux.conf > /home/vagrant/.tmux.conf
sudo chown -R vagrant:vagrant /home/vagrant/.tmux.conf

