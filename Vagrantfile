# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/debian-7.8-i386"
  config.vm.box_version = "2.2.0"
  config.vm.box_check_update = false

  config.vm.network :forwarded_port, guest: 22, host: 4010, id: 'ssh'

  config.vm.network "private_network", ip: "192.168.40.10"

  #RSYNC based one-way file sharing
  config.vm.synced_folder ".", "/home/vagrant/files",
    type: "rsync",
    rsync__exclude: [".git/", "node_modules", ".idea"],
    rsync__auto: false

  config.vm.provider "virtualbox" do |vb|
      # Customize the amount of memory on the VM:
      vb.memory = "368"
      vb.cpus = 1
  end

  # provision VM
  config.vm.provision "shell", path: "provision/base.sh", privileged: false

end
