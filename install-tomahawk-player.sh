#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
## http://www.tomahawk-player.org/download.html
sudo apt-get purge -y phonon-backend-gstreamer
sudo apt-get install -y phonon-backend-vlc
sudo add-apt-repository -y ppa:tomahawk/ppa
sudo apt-get update
sudo apt-get install -y tomahawk