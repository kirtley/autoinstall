#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# http://www.winehq.org/download/ubuntu
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install -y wine1.5 winetricks
wine