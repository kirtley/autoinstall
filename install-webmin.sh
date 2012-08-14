#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com
sudo apt-get install -y perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
cd /tmp/ && wget http://prdownloads.sourceforge.net/webadmin/webmin_1.580_all.deb && sudo dpkg -i webmin_1.580_all.deb