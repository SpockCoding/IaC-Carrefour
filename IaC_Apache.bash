#!/bin/bash
#Projeto Infra as Code Carrefour, IAC Instalação Apache

echo "Atualizacao do servidor"
apt update -y
apt upgrade -y

echo "Instalacao do Apache"
apt install -y apache2

echo "Instalacao do Unzip"
apt install -y unzip

echo "Mudança de diretorio"
cd /tmp/

echo "Download dos pacotes"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar os pacotes"
unzip main.zip

echo "Implantacao do site"
cd linux-site-dio-main 
cp * -R /var/www/localhost/htdocs/
cd /tmp

curl localhost