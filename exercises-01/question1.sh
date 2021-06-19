#!/bin/bash

# Exercises list 1
# 1. Crie um Script que após executado solicite dois valores como entrada. Esses valores devem ser somados e o resultado exibido para o usuário.

read  -p "Informe o primeiro valor:  " VALOR1
read -p "informe o segundo valor:" VALOR2
echo "o resultado eh: `expr $VALOR1 + $VALOR2`";

