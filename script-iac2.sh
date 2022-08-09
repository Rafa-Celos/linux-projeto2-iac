#!/bin/bash

echo "Atualizando o sistema..."!

apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
