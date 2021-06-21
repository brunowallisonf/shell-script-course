#!/bin/bash
FILENAME="backup_home_`date +%Y%m%d%H%M`.tgz"
DIRNAME="/home/$1/Backup"
FILEPATH="$DIRNAME/$FILENAME"

if [ ! -d $DIRNAME ]
then
    mkdir $DIRNAME
fi
cd $DIRNAME

EXISTS=`find $DIRNAME -ctime -7 -name backup_home\*gz`

if [ "$EXISTS" ]
then 
    read -p "Ja existe um arquivo de backup nos ultimos 7 dias, criar novamente? (s/N)" OPTION
    if [ "$OPTION" = "N" ]
    then
    echo "Aborting..."
    exit 1
    elif [ "$OPTION" = "s" ]
    then
        tgz $FILENAME /home/$1
        echo "Backup created"
    fi
    
else 

tgz "$FILENAME" "/home/$1"
echo "Backup created"
fi

