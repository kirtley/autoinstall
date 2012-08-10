#!/bin/bash

read -s -p "What is the base password? " userpass
newuser=remoteuser

sudo apt-get update
sudo apt-get install -y vnc4server
echo $userpass > sudo useradd -d /home/$newuser -m -k -p $newuser
su $newuser -c 'vnc4server :1 '
su $newuser -c 'vncserver -kill :1 '

for i in 1 2 3 4 5
do
echo $userpass > sudo useradd -d /home/$newuser$i -m -k /home/$newuser -p $newuser$i
done

sudo touch /etc/init.d/vnc4server
echo "# /etc/init.d/vnc4server" | sudo tee -a /etc/init.d/vnc4server
echo "#" | sudo tee -a /etc/init.d/vnc4server
echo "" | sudo tee -a /etc/init.d/vnc4server
echo "# Some things that run always" | sudo tee -a /etc/init.d/vnc4server
echo "touch /var/lock/vnc4server" | sudo tee -a /etc/init.d/vnc4server
echo "" | sudo tee -a /etc/init.d/vnc4server
echo "# Carry out specific functions when asked to by the system" | sudo tee -a /etc/init.d/vnc4server
echo "case \"$1\" in" | sudo tee -a /etc/init.d/vnc4server
echo "start)" | sudo tee -a /etc/init.d/vnc4server
echo "echo \"Starting script vnc4server \"" | sudo tee -a /etc/init.d/vnc4server
for i in 1 2 3 4 5
do
echo "su $newuser$i -c 'vnc4server :$i -geometry 1024x768 -depth 24 '" | sudo tee -a /etc/init.d/vnc4server
done
echo ";;" | sudo tee -a /etc/init.d/vnc4server
echo "stop)" | sudo tee -a /etc/init.d/vnc4server
echo "echo \"Stopping script vnc4server\"" | sudo tee -a /etc/init.d/vnc4server
for i in 1 2 3 4 5
do
echo "su $newuser$i -c 'vnc4server -kill :$i '" | sudo tee -a /etc/init.d/vnc4server
done
echo ";;" | sudo tee -a /etc/init.d/vnc4server
echo "*)" | sudo tee -a /etc/init.d/vnc4server
echo "echo \"Usage: /etc/init.d/vnc4server {start|stop}\"" | sudo tee -a /etc/init.d/vnc4server
echo "exit 1" | sudo tee -a /etc/init.d/vnc4server
echo ";;" | sudo tee -a /etc/init.d/vnc4server
echo "esac" | sudo tee -a /etc/init.d/vnc4server
echo "" | sudo tee -a /etc/init.d/vnc4server
echo "exit 0" | sudo tee -a /etc/init.d/vnc4server

sudo chmod a+x /etc/init.d/vnc4server
sudo update-rc.d vnc4server defaults