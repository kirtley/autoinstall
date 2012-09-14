#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

cd /tmp/

function install_prereqs ()
{
sudo apt-get install -y libwxbase2.8-0 libwxgtk2.8-0 python-apsw python-m2crypto python-netifaces python-wxgtk2.8 python-wxversion
}

function install_swift ()
{
arch=$(dpkg --print-architecture)
if [ $arch = "i386" ]; then
wget http://dl.tribler.org/tribler-swift_5.9.23-27674_i386.deb
elif [ $arch = "amd64" ]; then
wget http://dl.tribler.org/tribler-swift_5.9.23-27674_amd64.deb
else
echo "architecture not found"
exit 1
fi
sudo dpkg -i tribler-swift*.deb
}

function install_tribler ()
{
wget http://dl.tribler.org/tribler_5.9.30-1ubuntu1_all.deb
sudo dpkg -i tribler*.deb
}

install_prereqs
install_swift
install_tribler