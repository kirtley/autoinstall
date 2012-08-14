#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo apt-get update
sudo apt-get install -y transmission-daemon
