#!/usr/bin/env bash
## Kirtley Wienbroer
## kirtley@osgenie.com
## https://gist.github.com/2845824
sudo apt-get update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libxml2-dev libxslt-dev libreadline6-dev libyaml-dev
# apt-get -y install libmysqlclient-dev # uncomment for mysql support
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p286.tar.gz
tar -xvzf ruby-1.9.3-p286.tar.gz
cd ruby-1.9.3-p286/
./configure --prefix=/usr/local
sudo make
sudo make install