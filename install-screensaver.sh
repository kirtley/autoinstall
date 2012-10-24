#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# http://www.liberiangeek.net/2012/04/add-enable-screensavers-in-ubuntu-12-04-precise-pangolin/

sudo apt-get purge -y gnome-screensaver
sudo apt-get install -y xscreensaver xscreensaver-gl-extra xscreensaver-data-extra

echo "[Desktop Entry]" | sudo tee /etc/xdg/autostart/screensaver.desktop
echo "Name=Screensaver" | sudo tee -a /etc/xdg/autostart/screensaver.desktop
echo "Type=Applicaton" | sudo tee -a /etc/xdg/autostart/screensaver.desktop
echo "Exec=xscreensaver -nosplash" | sudo tee -a /etc/xdg/autostart/screensaver.desktop
