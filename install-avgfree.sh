#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# find the current version at http://free.avg.com/us-en/download.prd-alf
wget http://download.avgfree.com/filedir/inst/avg2012flx-r1793-a5062.i386.deb
sudo dpkg -i avg*.i386.deb
