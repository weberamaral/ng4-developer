#!/usr/bin/env bash

echo "Running travis provision script..."

sudo apt-get remove -y ruby1.9.1
sudo apt-get install -y ruby1.9.1-dev
sudo gem install travis --no-rdoc --no-ri

