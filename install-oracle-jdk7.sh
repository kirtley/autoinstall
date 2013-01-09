#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
mkdir -p /usr/lib/mozilla/plugins #just in case, this will be added to the package in the next version
sudo apt-get install -y oracle-jdk7-installer
