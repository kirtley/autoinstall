!#/bin/bash
# Install Java
sudo apt-get install -y openjdk-6-jdk
#Install Tomcat6
sudo apt-get install -y tomcat6 libvncserver0
# sudo echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> JAVA_HOME=/usr/lib/jvm/java-7-oracle
# Install Guacamole 0.6.0
cd /tmp/
wget http://superb-sea2.dl.sourceforge.net/project/guacamole/current/binary/linux-i586/ubuntu-12.04/bundle/guacamole-0.6.0-ubuntu-12.04-i586.tar.gz
tar xzf guacamole-0.6.0-ubuntu-12.04-i586.tar.gz 
cd guacamole-0.6.0-ubuntu-12.04-i586
sudo dpkg -i guacd_*.deb guacamole_*.deb libguac3_*.deb libguac-client-vnc0_*.deb
sudo dpkg -i guacamole-tomcat_*.deb
sudo vi /etc/guacamole/user-mapping.xml
