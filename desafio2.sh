#! /bin/bash

echo "Atualizando o servidor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando Apache"
apt install apache2 -y

echo "Instalando zip"
apt install unzip -y

echo "download de arquivos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando arquivos"
unzip main.zip

echo "Copiando arquivos para o diretorio do apache"
cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim do script"
