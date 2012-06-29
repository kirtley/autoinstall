syncdirectory=/home/kirtley

sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:nilarimogard/webupd8 && sudo apt-get update && sudo apt-get install -y grive
if [ ! -d $syncdirectory]; then
mkdir $syncdirectory
else
cd $syncdirectory && grive -a
fi

command="cd $syncdirectory && grive --force"
job="*/3 * * * * $command"
cat <(fgrep -i -v "$command" <(crontab -l)) <(echo "$job") | crontab -
