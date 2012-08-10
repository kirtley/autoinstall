#!/bin/bash

sudo apt-get update
sudo apt-get install -y vnc4server
vncserver :1
vncserver -kill :1
cp .vnc/xstartup .vnc/xstartup.orig
vi .vnc/xstartup
sudo reboot