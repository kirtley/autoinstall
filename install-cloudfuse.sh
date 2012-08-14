#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

read -p "What is your rackspace username? " rsusername
read -p "What is your rackspace API key? " rsapi
sudo apt-get update
# compiling tools
sudo apt-get install -y make build-essential autoconf gcc
# dependencies
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libfuse-dev
cd /tmp/
wget http://c16281.r81.cf2.rackcdn.com/cloudfuse-0.1.tar.gz
tar xzfv cloudfuse*.tar.gz
cd cloudfuse*
./configure
make
sudo make install
which cloudfuse

# create fstab entry
sudo echo "# Cloudfuse" >> /etc/fstab
sudo echo "cloudfuse 		/mnt/cloudfiles 			fuse 		username=$rsusername,api_key=$rsapi,user,umask=755,gid=104,uid=1000 0 0" >> /etc/fstab
sudo mount -a