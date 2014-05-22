#!/usr/bin/env bash

usage() { 
  echo "Usage: $0 [-n]"
  echo
  echo "Help"
  echo -e "-n\tNightly build"
  exit 1; 
} 

while getopts ":h:n" opt; do
  case $opt in
    h)
      usage
      ;;
    n)
      nightly=true
      ;;
    \?)
      usage
      ;;
   esac
done

exit 0

if [ $nightly = true ]; then
  echo ">>> Installing Rust Nightly"
  curl -s http://www.rust-lang.org/rustup.sh | sudo sh
elif
  echo ">>> Installing Rust 0.10"
  curl http://static.rust-lang.org/dist/rust-0.10-x86_64-unknown-linux-gnu.tar.gz | tar xz
  sudo ./rust-0.10-x86_64-unknown-linux-gnu/install.sh
fi
 
