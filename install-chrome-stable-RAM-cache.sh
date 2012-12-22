#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

##Install Chrome 
echo "Adding Google Chrome Stable PPA and installing Chrome Stable..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

## Setup RAMdisk for cache
sudo mkdir -p /cache/chrome/
sudo chmod 777 /cache/chrome/ -R
echo "## Chrome cache in RAM" | sudo tee -a /etc/fstab
echo "tmpfs    /cache/chrome    tmpfs    defaults,noatime,mode=1777      0       0" | sudo tee -a /etc/fstab
sudo mount -a

## Configure Unity Launcher to use RAMdisk
sudo cp /usr/share/applications/google-chrome.desktop /usr/share/applications/google-chrome.desktop.orig
sudo sed -i 's/Exec=\/opt\/google\/chrome\/google-chrome/Exec=\/opt\/google\/chrome\/google-chrome --disk-cache-dir="\/cache\/chrome\/" --disk-cache-size=600000000/g'  /usr/share/applications/google-chrome.desktop