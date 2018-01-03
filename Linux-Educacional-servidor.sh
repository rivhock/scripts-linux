#!/bin/sh

echo "####################################################"
echo "Desenvolvido por: Rivelino Hock"
echo "####################################################"

echo " Pressione   ENTER "
read ok

apt-get update

# Instala e configura compartilhamento de pasta
apt-get install nfs-kernel-server nfs-common -y
mkdir /home/publica
chmod 777 -R /home/publica
echo  '/home/publica *(rw,async,all_squash)' >> /etc/exports  
exportfs –a
/etc/init.d/nfs-kernel-server start
echo '*/1 * * * * root chmod –R 777 /home/publica' >> /etc/crontab   

apt-get install kolourpaint4 -y

# Chromium
apt-get install chromium-browser -y

# Flash
apt-get install flashplugin-installer -y

# Atualiza firefox
add-apt-repository ppa:mozillateam/firefox-stable &&  apt-get update 
apt-get install firefox ubufox

# Instala Epoptes (controle de laboratorio)
apt-get install epoptes -y 
adduser  professor epoptes

echo " Pressione   ENTER  para reboot"
read ok

#apt-get upgrade

reboot
