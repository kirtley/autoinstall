#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com

# install vnc4server
sudo apt-get update
sudo apt-get install -y vnc4server

# configure vnc4server
vncserver :1
vncserver -kill :1
cp .vnc/xstartup .vnc/xstartup.orig
vi .vnc/xstartup
sudo reboot