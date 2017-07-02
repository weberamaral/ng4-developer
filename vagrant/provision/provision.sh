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
/vagrant/provision/core.sh

# Install tolls components
/vagrant/provision/tools.sh

# Install dot files components
/vagrant/provision/dotfiles.sh

# Install Node.js
/vagrant/provision/nodejs.sh

# Travis-CI toolbelt:
/vagrant/provision/travis.sh

sudo touch /etc/vagrant-provisioned

echo "Your vagrant instance is running at: 192.168.33.10"
