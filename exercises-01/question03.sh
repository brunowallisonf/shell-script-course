#!/bin/bash

: '
3. Crie um script que receba um nome de usuário como parâmetro e exiba as
seguintes informações:
• UID do usuário
• Nome Completo / Descrição do Usuário
• Total em Uso no /home do usuário
• Informações do último login do usuário
• [Opcional] Validar se o usuário existe ou não sem o uso do if, que ainda
não foi estudado. Se não existir retorne o exit code 1, se existir retorne
exit 0 
'
echo "================================================================"

ls /home/$1 > /dev/null 2>&1 || { echo "usuario inexistente" ; exit 1; }

USERNAME=$1
NAME=`cat /etc/passwd | grep $USERNAME| awk -F ":" '{print $5}' | tr -d ","`

echo "Relatorio do Usuário:  $USERNAME"
echo "Nome ou descrição: $NAME" 
# echo "================================================================"

echo "UID: `cat /etc/passwd | grep $USERNAME| awk -F ":" '{print $3}'`"

echo "Total Usado no $HOME: `du -sh $HOME | awk '{print $1}'`"

echo -e "Ultimo login: \n `lastlog -u $USERNAME`"
