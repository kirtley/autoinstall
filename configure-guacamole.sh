#!/bin/sh
read -p "What is the hostname of the VNC server?" vnchostname
read -p "What is the IP of the VNC server?" vncip
read -p "What is the VNC password?" vncpassword
echo ""
read -p "What is password for guacamole users?" guacpassword
echo ""

# Configure Guacamole
for i in {1 2 3 4 5}
do
vncport="590"$i
	echo "<authorize username=\"$vnchostname$i\" password=\"$guacpassword$i\">" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <protocol>vnc</protocol>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <param name=\"hostname\">$vncip</param>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <param name=\"port\">$vncport</param>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <param name=\"password\">$vncpassword</param>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "</authorize>" | sudo tee -a /etc/guacamole/user-mapping.xml
done