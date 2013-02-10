#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
sudo apt-get update
sudo apt-get install -y ruby ruby1.8-dev irb rdoc build-essential mysql-client libmysql-ruby libmysqlclient15-dev
cd /usr/src/
sudo wget http://rubyforge.org/frs/download.php/74619/rubygems-1.7.2.tgz && sudo tar -zxf rubygems-1.7.2.tgz
cd rubygems-1.7.2
sudo ruby setup.rb
sudo ln -s /usr/bin/gem1.8 /usr/local/bin/gem
cd ~
git clone https://github.com/Pagoda/newpagoda-cli.git
cd newpagoda-cli
sudo gem install pagoda