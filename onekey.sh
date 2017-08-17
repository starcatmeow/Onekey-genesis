#!/bin/sh
if [ `whoami` = "root" ];then
echo "Shell will run in 5 seconds.Press Ctrl-C to stop."
sleep 5s
apt-get -y install python-pip openssl libssl-dev
pip install --upgrade pip
pip install --upgrade virtualenv
pip install scrypt construct==2.5.2
echo "The depends has been installed.Now you can use genesis.py!"
else
	echo "Permission denied!You must use the root user account."
fi
