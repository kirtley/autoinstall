read -p "What is your git username?" gitusername
read -p "What email address should git use?" gitemailaddy

#install git
sudo apt-get install -y git-core git-cola
sudo apt-get install xclip
#configure git
git config --global user.name "$gitusername"
git config --global user.email "$gitemailaddy"
git config --global credential.helper cache

#setup git to use ssh keys
#google-chrome https://github.com/settings/ssh


