#!/bin/bash
clear
echo -n "Atualizar antes de instalar o Xampp? [0] Sim ou [1] Não: "
read VAR

if [[ $VAR = 0 ]]; then
  echo "Iniciada a atualização!!"
  bash ./atualizar.sh
else
  echo "Instalação do Xampp!!"
  bash ./xampp.sh
fi
