#!/bin/bash
clear
echo "Update..."
sudo apt-get update
echo "Upgrade..."
sudo apt-get -y upgrade
echo "Dist Upgrade..."
sudo apt-get -y dist-upgrade
echo "Clean..."
sudo apt-get clean
echo "Autoremove..."
sudo apt-get -y autoremove
echo "Processo de atualização foi finalizado com sucesso!"