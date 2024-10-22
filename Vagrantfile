# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  WEB_VM_NAME = "web.m340"
  DB_VM_NAME = "db.m340"
  
  BASE_INT_NETWORK = "10.10.20"
  BASE_HOST_NETWORK = "192.168.56"
  
  BOX_IAMGE = "ubuntu/jammy64"
  
  config.ssh.insert_key = false
  
  config.vm.define "web" do |web|
    web.vm.box = BOX_IAMGE
	web.vm.hostname = WEB_VM_NAME
	
	web.vm.network "private_network", ip: "#{BASE_INT_NETWORK}.10", virtualbox__intnet: "m340"
	web.vm.network "private_network", ip:"#{BASE_HOST_NETWORK}.10", name: "VirtualBox Host-Only Ethernet Adapter"
	
	web.vm.synced_folder "./src/", "/var/www/"
	
	web.vm.provision "shell", path: "./provisioning/apt-setup.sh"
	web.vm.provision "shell", path: "./provisioning/web.sh"
	
	web.vm.provider "virtualbox" do |vb|
		vb.name = WEB_VM_NAME
	end
  end

  config.vm.define "db" do |db|
    db.vm.box = BOX_IAMGE
	db.vm.hostname = DB_VM_NAME
	
	db.vm.network "private_network", ip: "#{BASE_INT_NETWORK}.11", virtualbox__intnet: "m340"
	
	db.vm.provision "shell", path: "./provisioning/apt-setup.sh"
	db.vm.provision "shell", path: "./provisioning/db.sh"
	
	db.vm.provider "virtualbox" do |vb|
		vb.name = DB_VM_NAME
	end
  end

end
