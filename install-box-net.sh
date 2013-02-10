#!/bin/bash
echo "This script will install access to the specified Box.net account for the logged in user."
read -p "What is your Box.net email address? " box_email
read -s -p "What is your Box.net password? " box_pass
echo "Configuring Box.net access... Answer 'yes' when prompted"

sudo apt-get install -y davfs2
sudo dpkg-reconfigure davfs2
sudo adduser $USER davfs2
sudo cp -r /etc/davfs2/ /home/$USER/.davfs2
sudo chown -R $USER /home/$USER/.davfs2/
mkdir /home/$USER/box
echo "https://www.box.com/dav $box_email  $box_pass" | tee -a ~/.davfs2/secrets
echo "https://www.box.com/dav/ /home/$USER/box  davfs  _netdev,rw,user 0 0" | sudo tee -a /etc/fstab
sudo mount -a