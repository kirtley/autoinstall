#!/usr/bin/env bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# http://liveusb.info/dotclear/index.php?pages/install
# # Add Repository for MultiSystem 
sudo apt-add-repository 'deb http://liveusb.info/multisystem/depot all main' 
# # Add the public key 
wget -q -O- http://liveusb.info/multisystem/depot/multisystem.asc | sudo apt-key add - 
# # Recharge sources 
sudo apt-get update
# # Install MultiSystem 
sudo apt-get install -y multisystem