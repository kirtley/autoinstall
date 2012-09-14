#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

release=$(lsb_release -cs)
echo 'deb http://download.virtualbox.org/virtualbox/debian $release contrib'  | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-4.2 dkms