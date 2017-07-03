#!/usr/bin/env bash

echo "Running core provision script..."

sudo apt-get update
# Install build tools
sudo apt-get install -y make g++ libcairo2-dev libav-tools nfs-common ssh build-essential libssl-dev htop python-software-properties python
