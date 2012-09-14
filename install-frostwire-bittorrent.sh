#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

sudo apt-get install -y libaudiofile1 libesd0 libsvga1 libvdpau1 mplayer
cd /tmp/
wget http://dl.frostwire.com/frostwire/5.3.9/frostwire-5.3.9.all.deb
sudo dpkg -i frostwire*.deb