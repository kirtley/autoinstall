#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

echo "Adding Google Chrome Stable PPA and installing Chrome Stable..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable