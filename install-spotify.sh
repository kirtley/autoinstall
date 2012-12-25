#!/usr/bin/env bash
## Kirtley Wienbroer
## kirtley@osgenie.com
## http://www.webupd8.org/2011/12/how-to-install-native-spotify-linux.html

echo "Adding Spotify Stable PPA and installing Spotify Stable..."
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo apt-get update
sudo apt-get install -y spotify-client-qt