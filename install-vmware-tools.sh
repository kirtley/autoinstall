#!/bin/bash
# kirtley wienbroer
# kirtley@osgenie.com

function check_for_sudo ()
{
if [ $UID != 0 ]; then
		echo "You need root privileges"
		exit 2
fi
}

function install_vmware_tools ()
{
mkdir /mnt/cdrom
mount /dev/cdrom /mnt/cdrom
cd /tmp
rm -r vmware-tools-distrib
tar zxpfv /mnt/cdrom/VMwareTools-*.tar.gz
umount /dev/cdrom
cd vmware-tools-distrib
./vmware-install.pl -d
}

check_for_sudo
install_vmware_tools
reboot