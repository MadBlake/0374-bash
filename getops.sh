#!/bin/bash
while getopts "u:a:" opt; do
    case "$opt" in
        u) [[ -z "$OPTARG" ]] && echo "Falta el nom!" && exit 1
           echo "Usuari: $OPTARG" ;;
        a) [[ -z "$OPTARG" ]] && echo "Falta l'edat!" && exit 1
           echo "Edat: $OPTARG" ;;
        ?) echo "Ús: $0 -u <nom> -a <edat>" ;;
    esac
done
