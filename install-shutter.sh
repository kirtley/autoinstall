#!/bin/bash
# Install Shutter Screen capture
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:shutter/ppa
sudo apt-get update
sudo apt-get install -y shutter