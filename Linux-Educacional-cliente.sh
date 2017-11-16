#!/bin/sh

echo "####################################################"
echo "Desenvolvido por: Rivelino Hock"
echo "####################################################"
echo " "

echo " Pressione   ENTER "

read ok

apt-get update

apt-get install  nfs-common -y

mkdir /home/publica

chmod 777 /home/publica

echo  '192.168.0.2:/home/publica /home/publica nfs rw,users,exec 0 0' >> /etc/fstab  

echo  '*/1 *   * * *  root   mount  192.168.0.2:/home/publica  /home/publica' >> /etc/crontab

apt-get install chromium-browser -y

apt-get install flashplugin-installer -y

add-apt-repository ppa:mozillateam/firefox-stable &&  apt-get update 

apt-get install firefox ubufox


