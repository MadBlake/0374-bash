#!/bin/bash

suma() {
	result=$(( $1 * $2 ))
	echo "Resultado: " $result
	echo "Params: " $#
}

suma2() {
    result=$(( $1 + $2 ))
    echo $result
}

suma2 2 3 5
suma 2 
