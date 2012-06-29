# tweak bash history
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:exit:"
export HISTSIZE=1000000
# update system
sudo apt-get update 
sudo apt-get dist-upgrade -y
# add-apt-repository
sudo apt-get install python-software-properties -y
# install NFS
sudo apt-get install nfs-kernel-server -y
# compiling tools
sudo apt-get install make build-essential autoconf gcc -y
# additional virtualization components
sudo apt-get install qemu qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils libcap2-bin virtinst gnome-keyring -y
 

