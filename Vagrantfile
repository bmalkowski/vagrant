# -*- mode: ruby -*-
# vi: set ft=ruby :

git_url = "https://raw.githubusercontent.com/bmalkowski/vagrant/master"
script_url = "#{git_url}/scripts"

server_ip = "192.168.50.50"
server_memory = 512

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network :private_network, ip: server_ip 
  config.vm.synced_folder '.', '/vagrant', 
	  nfs: true

  config.vm.provider :virtualbox do |vb|
	  vb.customize ["modifyvm", :id, "--memory", server_memory]
  end

  config.vm.provision :shell, :path: "#{script_url}/base.sh"
  config.vm.provision :shell, :path: "#{script_url}/vim.sh"
end
