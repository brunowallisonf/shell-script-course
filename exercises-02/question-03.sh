#!/bin/bash

read -p "Digite o primeiro numero" NUMBER1
read -p "Digite o segundo numero" NUMBER2

echo "Escolha uma operacão: "
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"

read OPERATION

case $OPERATION in
    1)
    echo "Soma: `expr $NUMBER1 + $NUMBER2`"
    ;;
    2)
     echo "subtracao:  `expr $NUMBER1 - $NUMBER2`"
    ;;
    3)
     echo "Multiplicacao:  `expr $NUMBER1 \* $NUMBER2`"
     ;;
    4)
     echo "Divisao com resto = " `expr $NUMBER1 / $NUMBER2`
    ;;
    Q) 
    echo "saindo.."
    exit 0
    ;;
    *)
    "invalid input"
    ;;
    
esac