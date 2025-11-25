#!/bin/bash
comprova_fitxer() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

comprova_fitxer "./funciones.sh"
echo $?
read -p "Variable: " myvariable # comment
echo $myvariable
read -s -p "Pass: " password
echo $password
