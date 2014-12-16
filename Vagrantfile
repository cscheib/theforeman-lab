#-*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

# Configure puppet provisioner for all VMs
  config.vm.provision "puppet" do |provision|
    provision.manifests_path = "manifests"
    provision.manifest_file = "default.pp"
  end

  config.vm.define "master",primary: true do |node|
    node.vm.box = "ubuntu/trusty64"
    node.vm.hostname = "puppet.lab"
    node.vm.network "private_network", ip: "10.22.23.2"
    # Use shell provisioner for the puppet master only
    node.vm.provision :shell, path: "bootstrap-theforeman.sh"
    node.vm.provider "virtualbox" do |v|
        v.memory = 1024
    end
  end

end
