#/bin/bash
server_release=$(lsb_release -rs)
echo "deb http://download.opensuse.org/repositories/isv:ownCloud:devel/xUbuntu_$server_release/ /" | sudo tee /etc/apt/sources.list.d/owncloud-client.list
wget http://download.opensuse.org/repositories/isv:ownCloud:devel/xUbuntu_$server_release/Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt-get install -y owncloud-client