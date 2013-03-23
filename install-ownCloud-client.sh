#/bin/bash
# Kirtley Wienbroer
# kirtley@osgenie.com
# http://software.opensuse.org/download/package?project=isv:ownCloud:devel&package=owncloud-client
server_distro=$(lsb_release  -is)
server_release=$(lsb_release -rs)
if [ "$server_distro" == "Ubuntu" ]; then
    echo "deb http://download.opensuse.org/repositories/isv:ownCloud:devel/xUbuntu_$server_release/ /" | sudo tee /etc/apt/sources.list.d/owncloud-client.list
    wget http://download.opensuse.org/repositories/isv:ownCloud:devel/xUbuntu_$server_release/Release.key
    sudo apt-key add - < Release.key
    sudo apt-get update
    sudo apt-get install -y owncloud-client
else
    echo "Not a standard Ubuntu installation, you must install manually"
    echo "see http://owncloud.org/sync-clients/ for instructions"
fi