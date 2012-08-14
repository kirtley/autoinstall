#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get update
sudo apt-get install -y apt-mirror apache2
sudo cp /etc/apt/mirror.list /etc/apt/mirror.list.old
sudo vi /etc/apt/mirror.list
sudo apt-mirror

