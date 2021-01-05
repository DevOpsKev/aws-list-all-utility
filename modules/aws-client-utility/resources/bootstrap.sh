apt -y update

#provides an abstraction for apt repositories, prevents having to manually add Personal Package Archives (PPA)s
DEBIAN_FRONTEND=noninteractive apt -y install software-properties-common

#install git and set cache git credentials 10 minutes
apt -y install git
git config --global credential.helper cache
git config credential.helper 'cache --timeout=600'

apt -y install sudo
echo "Set disable_coredump false" >> /etc/sudo.conf
mkdir make && cd make

# install python
add-apt-repository -y ppa:deadsnakes/ppa
apt -y update
apt -y install python3.8
apt -y install python3-pip

#install powerline shell
pip3 install powerline-shell

#install git
apt -y install git

#install make
apt -y install make

#install curl
apt -y install curl

#create engineer user
clear
print_btc_logo
enter_engineer_password
adduser engineer --gecos "First Last,RoomNumber,WorkPhone,HomePhone"    
usermod -aG sudo engineer

#ensure engineer owns all files in engineer ~
chown -R engineer /home/engineer

## Install aws cli
pip3 install awscli

## Install aws-list-all
pip3 install aws-list-all

#return to root home
cd ~

