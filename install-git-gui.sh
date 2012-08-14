#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# install git and configure github to use RSA key
read -p "What is your git username?" gitusername
read -p "What email address should git use? name@server: " gitemailaddy

#install git
sudo apt-get install -y git-core git-cola
sudo apt-get install -y xclip
#configure git
git config --global user.name "$gitusername"
git config --global user.email "$gitemailaddy"
git config --global credential.helper cache

#setup git to use ssh keys
if [ ! -d ~/.ssh/*.pub ];then
echo "you need to setup an RSA key first, name@server:"
mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa -b 4096
fi
ls -l ~/.ssh/*.pub
read -p "please copy and paste the public key you want to use" gitsshkey
xclip -sel clip < ~/.ssh/$gitsshkey
google-chrome https://github.com/settings/ssh
# test ssh key
ssh -T git@github.com