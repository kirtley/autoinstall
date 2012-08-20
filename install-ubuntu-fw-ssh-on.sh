#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com
sudo apt-get install -y gufw
sudo ufw logging on
sudo ufw enable
sudo ufw status
#uncomment this line to enable ssh on most home networks
#sudo ufw allow proto tcp from 192.168.0.0/16 to any port 22