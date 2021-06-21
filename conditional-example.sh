#!/bin/bash


# if [ -f /etc/passwd ]
# then
#     echo Achou
# else
#     echo Não achou

# fi
# USUARIO=`grep  $1 /etc/passwd`
# if [ -n "$USUARIO" ]
# then
# echo Existente
# else
# echo inexistente
# fi

# CASE EXAMPLE:
case $1 in
    [0-9])
        echo "O parametro eh um numero "
        ;;
    [A-Z])
        echo "O Parametro eh uma letra maiuscula"
        ;;
    [a-z])
         echo "O Parametro eh uma letra minuscula"
         ;; 
    *)
        echo "O parametro eh um caractere especial"
        ;;
esac