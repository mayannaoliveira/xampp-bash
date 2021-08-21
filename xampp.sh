#!/bin/bash
clear
# echo "Instalação do Xampp!!"
echo -e "Instalação do Xampp XAMPP 8.0.9 Linux 64x, versão com:\nApache 2.4.48, MariaDB 10.4.20, PHP 8.0.9 & PEAR + SQLite 2.8.17/3.36.0 + multibyte (mbstring) support, Perl 5.32.1, ProFTPD 1.3.6, phpMyAdmin 5.1.1, OpenSSL 1.1.1k, GD 2.2.5, Freetype2 2.4.8, libpng 1.6.37, gdbm 1.8.3, zlib 1.2.11, expat 2.0.1, Sablotron 1.0.3, libxml 2.0.1, Ming 0.4.5, Webalizer 2.23-05, pdf class 0.11.7, ncurses 5.9, pdf class 0.11.7, mod_perl 2.0.11, FreeTDS 0.91, gettext 0.19.8.1, IMAP C-Client 2007e, OpenLDAP (client) 2.4.48, mcrypt 2.5.8, mhash 0.9.9.9, cUrl 7.53.1, libxslt 1.1.33, libapreq 2.13, FPDF 1.7, ICU4C Library 66.1, APR 1.5.2, APR-utils 1.5.4.\n Pressione ENTER para continuar ou CTRL+C para cancelar."
read $tecla
# Verificação
echo "Verificar se o seu Linux é 64x ou 32x:"
uname -m
# Download e instalação do Xampp
wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.0.9/xampp-linux-x64-8.0.9-0-installer.run/download
echo "Siga com a instalação do Xampp via interface gráfica!"
sudo ./xampp-linux-x64-8.0.9-0-installer.run
# Criar o shortcut do Xampp na laucher
echo "Adicionar o ícone do Xampp no menu de programas:"
cd /usr/share/applications
sudo touch xampp.desktop
# Código para o shortcut
echo -e "Colocar no editor (usado o Nano) o código abaixo e salvar:\n[Desktop Entry]\nEncoding=UTF-8\nName=XAMPP Control Panel\nComment=Start and Stop XAMPP\nExec=gksudo /opt/lampp/manager-linux-x64.run\nIcon=/opt/lampp/htdocs/favicon.ico\nCategories=Application\nType=Application\nTerminal=false"
nano xampp.desktop
# Rodar o Xampp
echo "Pressione ENTER para iniciar ou digite o comando /opt/lampp/lampp start"
sudo /opt/lampp/lampp start
# Agradecimento
echo -e "Muito Obrigada $USER por usar o meu script!\n\nSugestões, dúvidas ou contato via https://linktr.ee/mayannaoliveira"
