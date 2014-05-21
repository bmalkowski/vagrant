#!/usr/bin/env bash

# Julia Nightly Install
add-apt-repository ppa:staticfloat/julia-deps
add-apt-repository ppa:staticfloat/julianightlies
apt-get update
apt-get install -y julia
add-apt-repository --remove ppa:staticfloat/julia-deps
add-apt-repository --remove ppa:staticfloat/julianightlies
apt-get update
