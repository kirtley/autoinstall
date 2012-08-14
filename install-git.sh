#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# install and configure git
read -p "What is your git username?" gitusername
read -p "What email address should git use? name@server: " gitemailaddy

#install git
sudo apt-get install -y git-core
#configure git
git config --global user.name "$gitusername"
git config --global user.email "$gitemailaddy"
git config --global credential.helper cache