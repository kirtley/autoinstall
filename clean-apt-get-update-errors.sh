#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

# sudo -s -H
sudo apt-get clean
sudo rm /var/lib/apt/lists/*
sudo rm -r /var/lib/apt/lists/partial/*
sudo apt-get clean
sudo apt-get update