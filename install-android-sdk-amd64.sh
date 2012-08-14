#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com
# July 12 2012
# Install the Android SDK

# 64 bit environment
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y ia32-libs oracle-java7-installer
sudo update-alternatives --config java
# Eclipse 64bit
wget http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/juno/R/eclipse-jee-juno-linux-gtk-x86_64.tar.gz | tar xzf eclipse-jee-juno-linux-gtk-x86_64.tar.gz
google-chrome http://developer.android.com/sdk/installing/installing-adt.html
./eclipse/eclipse

# Download the Android SDK
wget http://dl.google.com/android/android-sdk_r20-linux.tgz  | tar xzf android-sdk_r20-linux.tgz
./android-sdk-linux/tools/android