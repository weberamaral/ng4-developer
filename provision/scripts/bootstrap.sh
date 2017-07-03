#!/usr/bin/env bash

if [ -e "/etc/vagrant-provisioned" ];
then
    echo "Vagrant provisioning already completed. Skipping..."
    exit 0
else
    echo "Starting Vagrant provisioning process..."
fi

# Change the hostname so we can easily identify what environment we're on:
echo "ng4box.local" | sudo tee --append /etc/hostname > /dev/null
# Update /etc/hosts to match new hostname to avoid "Unable to resolve hostname" issue:
echo "127.0.0.1 ng4box.local" | sudo tee --append /etc/hostname > /dev/null
# Use hostname command so that the new hostname takes effect immediately without a restart:
sudo hostname ng4box

# Install core components
/provision/scripts/core.sh

# Install tolls components
/provision/scripts/tools.sh

# Install dot files components
/provision/scripts/dotfiles.sh

# Install Node.js
/provision/scripts/nodejs.sh

sudo touch /etc/vagrant-provisioned

echo "Your vagrant instance is running at: 192.168.33.10"
