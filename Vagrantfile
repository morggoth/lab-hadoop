# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_IMAGE = 'ubuntu/bionic64'
NODE_COUNT = 3

Vagrant.configure('2') do |config|
  (1..NODE_COUNT).each do |i|
    config.vm.define "node#{i}" do |subconfig|
      subconfig.vm.box = BOX_IMAGE
      subconfig.vm.hostname = "node#{i}.cluster.local"
      subconfig.vm.network :private_network, ip: "10.0.0.#{i + 10}"
      subconfig.vm.provider 'virtualbox' do |vb|
        vb.memory = '4096'
        vb.cpus = '1'
      end
    end
  end
end
