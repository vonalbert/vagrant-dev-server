# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    #config.vm.box = "ubuntu/xenial64"
    config.vm.box = "bento/ubuntu-16.04"

    # config.vm.hostname "app.dev"
    config.vm.network "private_network", :ip => "192.168.50.50"

    # http, mysql, pgsql, mongo, redis, and rtmp port forwarding
    # (first 2 digits of port x2 = localhost port number)
    config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    config.vm.network :forwarded_port, guest: 3306, host: 3333, auto_correct: true
    config.vm.network :forwarded_port, guest: 5432, host: 5454, auto_correct: true
    #config.vm.network :forwarded_port, guest: 27017, host: 2727, auto_correct: true
    #config.vm.network :forwarded_port, guest: 6379, host: 6363, auto_correct: true
    #config.vm.network :forwarded_port, guest: 1935, host: 1935, auto_correct: true

    # share project folders
    config.vm.synced_folder ".", "/vagrant"
    config.vm.synced_folder "..", "/var/www/project", type: "nfs"

    # If true, then any SSH connections made will enable agent forwarding.
    config.ssh.forward_agent = true

    # Give this machine some power (default is 1 core and <500MB RAM)
    config.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--ioapic", "on"]
            vb.customize ["modifyvm", :id, "--memory", 1024]
            vb.customize ["modifyvm", :id, "--cpus", 2]
    end

    # Provisioning using shell scripting
    config.vm.provision :shell, :path => "provision/provision.sh"
    config.vm.provision :shell, :path => "provision/project.sh", privileged: false

end
