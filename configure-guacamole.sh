#!/bin/bash
read -p "What is the hostname of the VNC server?" vnchostname
read -p "What is the IP of the VNC server?" vncip
read -s -p "What is the VNC password?" vncpassword
echo ""
read -s -p "What is password for guacamole users?" guacpassword
echo ""

# Configure Guacamole
for i in {1..5}
do
vncport="590"$i
	sudo /bin/sh -c 'echo "<authorize username=\"$vnchostname$i\" password=\"$guacpassword$i\"\>" >> /etc/guacamole/user-mapping.xml'
	sudo /bin/sh -c 'echo "     <protocol>vnc</protocol>" >> /etc/guacamole/user-mapping.xml'
	sudo /bin/sh -c 'echo "     <param name=\"hostname\">$vncip</param>" >> /etc/guacamole/user-mapping.xml'
	sudo /bin/sh -c 'echo "     <param name=\"port\">$vncport</param>" >> /etc/guacamole/user-mapping.xml'
	sudo /bin/sh -c 'echo "     <param name=\"password\">$vncpassword</param>" >> /etc/guacamole/user-mapping.xml'
	sudo /bin/sh -c 'echo "</authorize>" >> /etc/guacamole/user-mapping.xml'
done