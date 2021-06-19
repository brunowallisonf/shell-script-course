#!/bin/bash
: '
2 - Crie um script que gere um relatório de algumas informações da máquina
atual:
• Nome da Máquina
• Data e Hora Atual
• Desde quando a máquina está ativa
• Versão do Kernel
• Quantidade de CPUs/Cores
• Modelo da CPU
• Total de Memória RAM Disponível
• Partições
'


echo "================================================================"
echo "Relatorio da máquina:  `uname -n`"
echo "Data/Hora: `date`"
echo "================================================================"
echo "Maquina ativa desde:  `uptime -s`"
echo "Versão do kernel: `uname -r`"
echo "CPUs: "

echo "Quantidade de CPUs/Core: `cat /proc/cpuinfo | grep "cpu cores" | head -n1 | cut -c 13`"
echo "Modelo da CPU: `cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c 13-`"
echo "Memória total: ` free  | grep "Mem:" | awk '{print $2}'`"

echo -e "Partiçoes: \n `df`"
