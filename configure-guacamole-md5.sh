#!/bin/bash
read -p "What is the hostname of the VNC server?" vnchostname
read -p "What is the IP of the VNC server?" vncip
read -s -p "What is the VNC password?" vncpassword
echo ""
read -s -p "What is password for guacamole users?" guacpassword
echo ""

# Configure Guacamole
echo "<user-mapping>" | sudo tee -a /etc/guacamole/user-mapping.xml
for i in 1 2 3 4 5
do
vncport="590"$i
guacuserpw="$(echo -n $guacpassword$i | openssl md5)"
	echo "<authorize username=\"$vnchostname$i\" password=\"$guacuserpw\" encoding=\"md5\">" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <protocol>vnc</protocol>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <param name=\"hostname\">$vncip</param>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <param name=\"port\">$vncport</param>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "     <param name=\"password\">$vncpassword</param>" | sudo tee -a /etc/guacamole/user-mapping.xml
	echo "</authorize>" | sudo tee -a /etc/guacamole/user-mapping.xml
done
echo "</user-mapping>" | sudo tee -a /etc/guacamole/user-mapping.xml