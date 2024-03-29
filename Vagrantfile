# -*- mode: ruby -*-
# vi:set ft=ruby sw=2 ts=2 sts=2:

IP_NW = "192.168.5."
IP_START = 10

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  # config.vm.box = "base"
  config.vm.box = "ubuntu/bionic64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  config.vm.define "devops-box" do |node|
    node.vm.provider "virtualbox" do |vb|
      vb.name = "devbox"
      vb.memory = 8096
      vb.cpus = 2
    end
    node.vm.hostname = "devbox"
    # node.vm.network "private_network", ip: "192.168.199.9"
    # node.vm.network :private_network, ip: IP_NW + "#{IP_START + i}"
    node.vm.network "forwarded_port", guest: 22, host: 2700

    # node.vm.provision "setup-guest-additions", type: "shell", :path => "scripts/install-guest-additions.sh"

    # install required packages and utlity
    node.vm.provision "utility", type: "shell", :path => "scripts/bootstrap.sh"
  end
end