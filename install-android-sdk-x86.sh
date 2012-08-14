#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com
# July 12 2012
# Install the Android SDK

# 32bit environment
sudo apt-get purge openjdk*
sudo add-apt install -y python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y sun-java6-jdk
# Eclipse 32bit
wget http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/juno/R/eclipse-jee-juno-linux-gtk.tar.gz

# Download the Android SDK
wget http://dl.google.com/android/android-sdk_r20-linux.tgz