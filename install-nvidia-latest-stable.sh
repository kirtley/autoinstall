#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ubuntu-x-swat/x-updates && sudo apt-get update
sudo apt-get install -y nvidia-current nvidia-settings
sudo apt-get install -yf
cat /proc/driver/nvidia/version