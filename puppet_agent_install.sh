'#!/bin/sh'
sudo apt-get update
wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb
sudo apt-get update
sudo apt-get install -y puppet-agent
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
