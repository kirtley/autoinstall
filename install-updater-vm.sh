#!/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com

nfs-server=192.168.122.1
function check_if_user_is_root()
{
	if [ $UID != 0 ]; then
		echo "You need root privileges"
		exit 2
	fi
}

check_if_user_is_root
# create directories
mkdir /work
mkdir -p /iso/updated
mkdir -p /iso/source
mkdir -p /iso/nfs
chmod -R 777 /iso
mkdir -p /var/nfs/images
chmod -R /var/nfs/images

# modify nfs-common
echo "NEED_IDMAPD=yes" >> /etc/nfs-common
# modify fstab
echo "# nfs share for updated isos" >> /etc/fstab
echo "$nfs-server:/updatediso /iso/nfs nfs4 _netdev,auto 0 0" >> /etc/fstab
echo "$nfs-server:/images /var/nfs/images nfs4 _netdev,auto 0 0" >> /etc/fstab

mount -a
add-apt-repository -y ppa:uck-team/uck-stable && sudo apt-get update
apt-get install -y syslinux squashfs-tools genisoimage python-software-properties xauth uck fuse-utils unionfs-fuse #sbm
apt-get install -yf

#echo "# tmpfs work directory" >> /etc/fstab
#echo "tmpfs /work tmpfs size=2000M,noatime,mode=1777 0 0" >> /etc/fstab