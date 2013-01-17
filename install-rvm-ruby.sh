#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# Install postgreSQL
sudo apt-get install -y postgresql postgresql-server-dev-9.1 libsqlite3-dev3
#Install RVM and ruby 1.9.2 on Ubuntu
sudo apt-get install -y curl build-essential libssl-dev libreadline-gplv2-dev
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
# Add to end of .bashrc file ...
echo 'if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi' >> ~/.bashrc
# Open a new terminal
bash -c /bin/bash
type rvm | head -n1 # Should see "rvm is a function"
rvm notes # to make sure of a good install
rvm install 1.9.2 # Installs ruby 1.9.2
rvm --default ruby-1.9.2 # Makes 1.9.2 the default ruby
ruby -v # Should see the 1.9.2 message
bundle install --system
rvm use system