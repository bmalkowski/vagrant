#!/usr/bin/env bash

usage() { echo "Usage: `basename $0` <release|nightly>"; exit 1; }

if [ $# -eq 0 ]; then
  usage
fi

version=$1
if [ "$version" = "nightly" ]; then
  echo ">>> Installing Julia Nightly"
  sudo add-apt-repository ppa:staticfloat/julia-deps
  sudo add-apt-repository ppa:staticfloat/julianightlies
  sudo apt-get update
  sudo apt-get install -y julia
  sudo add-apt-repository --remove ppa:staticfloat/julia-deps
  sudo add-apt-repository --remove ppa:staticfloat/julianightlies
  sudo apt-get update
elif [ "$version" = "release" ]; then
  echo ">>> Installing Julia Release"
  sudo apt-get install -y julia
else
  usage
fi
