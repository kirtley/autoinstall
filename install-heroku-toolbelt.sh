#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get update
sudo apt-get install -y rake ruby-bundler rails
cd /tmp/
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
#sudo gem install rake
heroku login