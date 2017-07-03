#!/usr/bin/env bash

echo "Running dot files provision script..."

# Vim
cp -r /provision/dotfiles/.vim /home/vagrant/
cp /provision/dotfiles/.vimrc /home/vagrant/

# Git
cp /provision/dotfiles/.gitconfig ~/.gitconfig

# Other dot files
# cd /vagrant/
# git clone https://github.com/mathiasbynens/dotfiles.git  && cd dotfiles && source bootstrap.sh
