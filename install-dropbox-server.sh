#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

function autostart_dropbox_on_login ()
{
cd ~ 
touch .bash_profile
echo "# /bin/bash ####begin of file ~/.bash_profile" >> .bash_profile
echo "# suggested by Naro Kalamaster for the Drobox User Forum" >> .bash_profile
echo "# kalamaster@gmail.com # add me if you want" >> .bash_profile
echo "#" >> .bash_profile
echo "# ~/.bash_profile: executed by bash(1) for login shells." >> .bash_profile
echo "dbstatus=\$(python dropbox.py status)" >> .bash_profile
echo "if [ \"\$dbstatus\" = \"Dropbox isn't running!\" ] ; then" >> .bash_profile
echo "python dropbox.py start" >> .bash_profile
echo "fi" >> .bash_profile
echo "# include .bashrc if it exists" >> .bash_profile
echo "if [ -f ~/.bashrc ]; then" >> .bash_profile
echo ". ~/.bashrc" >> .bash_profile
echo "fi" >> .bash_profile
echo "" >> .bash_profile
echo "# set PATH so it includes user's private bin if it exists" >> .bash_profile
echo "if [ -d ~/bin ] ; then" >> .bash_profile
echo "PATH=~/bin:"\$\{PATH\}"" >> .bash_profile
echo "fi" >> .bash_profile
echo "#end of file" >> .bash_profile
}

function install_drobox_server ()
{
cd ~
wget http://linux.dropbox.com/packages/dropbox.py
arch=$(dpkg --print-architecture)
if [ $arch = "i386" ]; then
wget -O - "http://dl-web.dropbox.com/u/17/dropbox-lnx.x86-1.4.9.tar.gz" | tar xzf - && ~/.dropbox-dist/dropboxd
elif [ $arch = "amd64" ]; then
wget -O - "http://dl-web.dropbox.com/u/17/dropbox-lnx.x86_64-1.4.9.tar.gz" | tar xzf - && ~/.dropbox-dist/dropboxd
else
echo "Architecture not found"
exit 1
fi
exit 0
}

install_drobox_server
autostart_dropbox_on_login