#!/usr/bin/env bash

echo "Running dot files provision script..."

# Vim
cp -r /vagrant/provision/dotfiles/.vim /home/vagrant/
cp /vagrant/provision/dotfiles/.vimrc /home/vagrant/

# Git
cp /vagrant/provision/dotfiles/.gitconfig ~/.gitconfig
