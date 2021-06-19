#!/bin/bash

################################################################
#
# first_script.sh script of example
# Author: Bruno Fernandes
# createdAt: 28/05/2021
# example: ./first_script.sh 
#
################################################################
HOUR=$(date +%H:%M)
FILE="/home/bruno/Documents/courses/shell-script-course/programmers.txt"
clear
echo "========My First Script========"
echo ""
echo  "Date and hour: $HOUR"
echo ""
sort $FILE
read -p "Informe seu nome" NOME
read -s -p "password"
echo $NOME