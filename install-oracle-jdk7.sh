#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get install -y python-software-properties
add-apt-repository -y ppa:webupd8team/java
apt-get update
mkdir -p /usr/lib/mozilla/plugins #just in case, this will be added to the package in the next version
apt-get install -y oracle-jdk7-installer
