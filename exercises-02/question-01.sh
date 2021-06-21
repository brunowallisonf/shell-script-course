#!/bin/bash

HOUR=$(date +"%I:%M %p")
HOURVALUE=`echo $HOUR | awk -F":" '{print $1}'`

if echo $HOUR | grep "AM" > /dev/null
then
    if [ $HOURVALUE -ge 6 ] 
    then
    echo "Bom dia"
    else 
    echo "Boa Noite"
    fi    
elif  echo $HOUR | grep "PM" > /dev/null
then
    if [ $HOURVALUE -gt 6 ]
    then
    echo "Boa Noite"
    else
    echo "Boa Tarde"
    fi
fi
echo "A hora atual é: $HOUR"