#!/usr/bin/env bash
## Kirtley Wienbroer
## kirtley@osgenie.com
## http://www.liberiangeek.net/2012/04/the-quickest-way-to-install-spotify-client-in-ubuntu-12-04-precise-pangolin/
## http://askubuntu.com/questions/128026/is-there-a-spotify-repository-that-works-for-12-04

echo "Adding Spotify Stable PPA and installing Spotify Stable..."
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo apt-get update
sudo apt-get install -y spotify-client-qt