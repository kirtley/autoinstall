#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
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
wget wget http://linux.dropbox.com/packages/dropbox.py
cd ~ && wget -O - "http://dl-web.dropbox.com/u/17/dropbox-lnx.x86_64-1.4.9.tar.gz" | tar xzf - && ~/.dropbox-dist/dropboxd
