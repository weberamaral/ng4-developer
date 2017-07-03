# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: "192.168.33.10"

  # Give the guest OS access to the user's home dir for .ssh keys and so on.
  # Enable nfs for faster performance. Ignored on Windows host.
  # config.vm.synced_folder "./vagrant/", "/vagrant", nfs: true
  # config.vm.synced_folder "./source/", "/home/vagrant/source", nfs: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #  # Use VBoxManage to customize the VM. For example to change memory:
  #  vb.customize ["modifyvm", :id, "--memory", "1024", "--name", "ng4box"]
  # end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # For now we'll use basic shell provisioning script:
  config.vm.provision :shell, :path => "provision/scripts/bootstrap.sh", privileged: false

end
