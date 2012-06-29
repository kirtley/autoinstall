sudo apt-get update
sudo apt-get install -y gcc libcurl4-openssl-dev libxml2 libxml2-dev libfuse-dev
cd /tmp/
wget http://c16281.r81.cf2.rackcdn.com/cloudfuse-0.1.tar.gz
tar xzfv cloudfuse*.tar.gz
cd cloudfuse*
./configure
make
sudo make install
which cloudfuse

#sudo echo "# Cloudfuse" >> /etc/fstab
#sudo echo "cloudfuse 		/mnt/cloudfiles 			fuse 		username=kwienbroer,api_key=7939734c546d7c4311ac5ae6aea12c41,user,umask=755,gid=104,uid=1000 0 0" >> /etc/fstab