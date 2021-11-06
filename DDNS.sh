#!/bin/bash

echo "Bienvenue dans le script DDNS pour CloudFlare !"
read -p "Voulez-vous lancer le script de configuration ? Y/N :" accept
if [ "$accept" = "y" ]
then
    sudo apt update
    sudo apt -y upgrade
    sudo apt install ddclient libdata-validate-ip-perl
    sudo dpkg-reconfigure ddclient
    wget https://sourceforge.net/projects/ddclient/files/ddclient/ddclient-3.9.0/ddclient-3.9.0.tar.gz
    tar -xvf ddclient-3.9.0.tar.gz
    sudo cp -f ddclient-3.9.0/ddclient /usr/sbin/ddclient
    sudo mkdir /etc/ddclient
    sudo mv /etc/ddclient.conf /etc/ddclient
    rm ddclient-3.9.0.tar.gz
    rm -R ddclient-3.9.0
    cd /etc/ddclient/
    sudo rm ./ddclient.conf
    read -p " Saisir le temp en seconde de mise à jour de l'ip ex : 300 (pour 5mins) : " Temp
    read -p " Saisir l'email lié au compte CloudFlare : " Email
    read -p " Saisir la clé API globale de votre compte CloudFlare : " CleApi
    read -p " Saisir le nom de domaine que vous possédé ex: google.com : " Domaine
    read -p " Saisir l'enregistrement à mettre à jour ex: mail.google.com : " SubDomaine
    echo "daemon=$Temp" >> ddclient.conf
    echo "ssl=yes" >> ddclient.conf
    echo "protocol=cloudflare" >> ddclient.conf
    echo "use=web" >> ddclient.conf
    echo "login=$Email" >> ddclient.conf 
    echo "password=$CleApi" >> ddclient.conf 
    echo "zone=$Domaine" >> ddclient.conf 
    echo "$SubDomaine" >> ddclient.conf 
    sudo ddclient -query
    echo "Félicitation votre server mettra à jour votre DNS en fonction de votre IP dynamique toute les $Temp secondes"
else
        echo "ok une prochaine fois !"
fi
