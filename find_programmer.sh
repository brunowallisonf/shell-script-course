#!/bin/bash

################################################################
#
# first_script.sh findprogrammer
# Author: Bruno Fernandes
# createdAt: 28/05/2021
# example: ./find_programmer.sh 
#
################################################################

ARQPROGRAMMERS=$2
clear 
echo "Script para busca de programadores"
echo ""
echo -n "Por favor informe o nome a ser procurado"
TERM_TO_FIND=$1
echo "O Nome do programador é: $(grep "$1" $ARQPROGRAMMERS)"

