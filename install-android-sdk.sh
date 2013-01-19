#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com
# July 12 2012
# Install the Android SDK

function install_for_64bit ()
{
# 64 bit environment
sudo apt-get purge openjdk*
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y ia32-libs oracle-java7-installer
sudo update-alternatives --config java
# Eclipse 64bit
wget http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/juno/R/eclipse-jee-juno-linux-gtk-x86_64.tar.gz | tar xzf eclipse-jee-juno-linux-gtk-x86_64.tar.gz
}

function install_for_32bit ()
{
# 32bit environment
sudo apt-get purge openjdk*
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y sun-java6-jdk
# Eclipse 32bit
wget http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/juno/R/eclipse-jee-juno-linux-gtk.tar.gz
}

function configure_eclipse ()
{
google-chrome http://developer.android.com/sdk/installing/installing-adt.html
./eclipse/eclipse
}

function install_Android_SDK ()
{
wget http://dl.google.com/android/android-sdk_r20-linux.tgz  | tar xzf android-sdk_r20-linux.tgz
./android-sdk-linux/tools/android
}

arch=$(dpkg --print-architecture)
if [ $arch = "i386" ]; then
install_for_32bit
elif [ $arch = "amd64" ]; then
install_for_64bit
fi
configure_eclipse
install_Android_SDK