#!/bin/bash
contador=1
contador=$(($contador + 1))
echo "Contador: " $contador
echo "Sortida: " $?
echo "PID: " $$
echo "Numero parametres: " $#
echo "Parametres: " $*

