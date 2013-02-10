#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get update
sudo apt-get install -y ruby rake gem
git clone https://github.com/Pagoda/newpagoda-cli.git
sudo gem install newpagoda-cli/pagoda
#sudo gem install rake
