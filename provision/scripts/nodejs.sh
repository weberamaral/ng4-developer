#!/usr/bin/env bash

echo "Running node.js provision script..."

## Install latest nvm
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout v0.33.2
source ~/.nvm/nvm.sh
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc

## Install node v6.10.1
nvm install 6.10.1 &> /dev/null
nvm alias default 6.10.1

## Install global packages
npm install -g @angular/cli typescript
