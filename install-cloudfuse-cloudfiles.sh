#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
cd ~ 
touch .bash_profile
echo "# /bin/bash ####begin of file ~/.bash_profile" >> .bash_profile
echo "#" >> .bash_profile
echo "# ~/.bash_profile: executed by bash(1) for login shells." >> .bash_profile
echo "cloudfuse /cloudfiles" >> .bash_profile
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