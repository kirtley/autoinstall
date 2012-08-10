#!/bin/sh
read -p "What is the hostname of the VNC server?" vnchostname
read -p "What is the IP of the VNC server?" vncip
read -p "What is the VNC password?" vncpassword
echo ""
read -p "What is password for guacamole users?" guacpassword
echo ""

# Configure Guacamole
for i in {1..5}
do
vncport="590"$i
	sudo echo "<authorize username=\"$vnchostname$i\" password=\"$guacpassword$i\">" >> /etc/guacamole/user-mapping.xml
	sudo echo "     <protocol>vnc</protocol>" >> /etc/guacamole/user-mapping.xml
	sudo echo "     <param name=\"hostname\">$vncip</param>" >> /etc/guacamole/user-mapping.xml
	sudo echo "     <param name=\"port\">$vncport</param>" >> /etc/guacamole/user-mapping.xml
	sudo echo "     <param name=\"password\">$vncpassword</param>" >> /etc/guacamole/user-mapping.xml
	sudo echo "</authorize>" >> /etc/guacamole/user-mapping.xml
done