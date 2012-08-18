#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com
sudo apt-get install -y ufw
sudo ufw allow ssh/tcp
sudo ufw logging on
sudo ufw enable
sudo ufw status