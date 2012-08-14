#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# install install Ubuntu Customization Kit and dependencies
sudo add-apt-repository -y ppa:uck-team/uck-stable && sudo apt-get update
sudo apt-get install -y syslinux squashfs-tools genisoimage python-software-properties xauth uck fuse-utils unionfs-fuse #sbm
sudo apt-get install -yf

