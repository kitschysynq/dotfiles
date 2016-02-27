#!/bin/bash

sudo apt-get install $(< package_list.txt)

#Install powerline and fonts
pip install --user powerline-status

mkdir tmp
wget -P tmp https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget -P tmp https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts
mv tmp/PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv tmp/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
rmdir tmp
