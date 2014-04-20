#!/bin/bash

mkdir -p ~/.vim/tmp/{backup,swp,tmp}
mkdir -p ~/.vim/bundle
pushd ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git
popd
