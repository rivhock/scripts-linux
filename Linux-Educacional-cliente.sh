#!/bin/sh

echo "####################################################"
echo "Desenvolvido por: Rivelino Hock"
echo "####################################################"
echo " "

echo " Pressione   ENTER "
read ok

apt-get update

# Instalar acesso a pasta compartilhada
apt-get install  nfs-common -y
mkdir /home/publica
chmod 777 /home/publica

## Deve-se trocar o IP conforme for o endereço do servidor de compartilhamento
echo  '192.168.0.2:/home/publica /home/publica nfs rw,users,exec 0 0' >> /etc/fstab  
echo  '*/1 *   * * *  root   mount  192.168.0.2:/home/publica  /home/publica' >> /etc/crontab

# Instala aplicativo de desenho
apt-get install kolourpaint4 -y

# Instala navegador chromium
apt-get install chromium-browser -y

# Instala flash player
apt-get install flashplugin-installer -y

# Atualiza Firefox
add-apt-repository ppa:mozillateam/firefox-stable &&  apt-get update 
apt-get install firefox ubufox

# Instala e configura aplicativo Epoptes (controle de laboratorio)
apt-get install epoptes-client -y 
echo  'SERVER = 192.168.0.2' >> /etc/default/epoptes-client 
echo  '192.168.0.2 SERVER' >> /etc/hosts
epoptes-client -c

reboot
