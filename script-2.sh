#!/bin/sh

echo "#####################################"
echo " Desenvolvido por: Rivelino Hock"
echo " Bacharel em Sistemas de Informacao"
echo "#####################################"
echo " "



cd /root


lsusb

sleep 20


aptitude update
aptitude safe-upgrade

echo ":: Atualizacão da Estação ::"
echo " "


echo " :: programa1: (programa1!) ::"
echo " "
aptitude install programa1
echo "programa1"
wget ftp://endereço-para-baixar/programa1.sh
chmod +x programa1.sh
./programa1.sh


echo " :: programa2: (programa2!) ::"
echo " "
aptitude install programa2
echo "programa2"
wget ftp://endereço-para-baixar/programa2.sh
chmod +x programa2.sh
./programa2.sh


echo " " 
echo "Digite 1 - para scaner FUJITSU "
echo "Digite 2 - para scaner KODAK "
read opcao;

case "$opcao" in

1)
  echo ":: Você digitou - 1 - FUJITSU ::";
  echo " "
  echo ":: Instalação Scanner FUJITSU :: "
  cd /root
  wget ftp://endereco-para-baixar/1.deb
  dpkg -i 1.deb 

;;

2)
 echo "Você digitou - 2 - KODAK ";
 echo "::   Instalação do SCANNER KODAK  :: "
 wget ftp://endereço-para-baixar/2.sh
 chmod +x 2.sh
 ./2.sh
  

;;
	
*) echo "VocE tem de DIGITAR - 1 - ( um ) OU - 2 - ( dois ), Infiliz " ;;

esac

exit
