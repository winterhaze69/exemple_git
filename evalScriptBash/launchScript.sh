#!/bin/bash
#file N°1
echo "# -*- mode: ruby -*-" >> ./Vagrantfile
echo "# vi: set ft=ruby :" >> ./Vagrantfile

echo "Vagrant.configure('2') do |config|" >> ./Vagrantfile
echo "config.vm.box = 'ubuntu/xenial64'" >> ./Vagrantfile

echo "wich ip would you like to have?"
read answer
echo "config.vm.network 'private_network', ip: '$answer'" >> ./Vagrantfile
echo "name the folder to sync with:"
read answer2
echo "config.vm.synced_folder './$answer2', '/var/www/html'" >> ./Vagrantfile
mkdir "$answer2"
echo "end" >> ./Vagrantfile
vagrant up
mv packages.sh "./$answer2"
vagrant ssh
