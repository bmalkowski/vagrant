#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "Usage: `basename $0` <version|nightly>"
  exit 1
fi

version=$1
path="rust-$version-x86_64-unknown-linux-gnu"
file="${path}.tar.gz"
url="http://static.rust-lang.org/dist/${file}"

echo ">>> Installing Rust $version"
curl -s $url | tar xz && sudo ./$path/install.sh; rm -rf ./$path

