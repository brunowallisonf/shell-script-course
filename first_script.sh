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
clear
echo "========My First Script========"
echo ""
echo  "Date and hour: $HOUR"
echo ""
ls -l