#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo add-apt install -y python-software-properties
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
sudo apt-get update
sudo apt-get install -y indicator-multiload
