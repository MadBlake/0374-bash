#!/bin/bash

echo "Qui son els teus nom i cognom?"
read nom cognom
echo "Hola, $nom $cognom!"

read -p "Com et dius? " nom
echo "Hola, $nom!"

read -s -p "Introdueix la teva contrasenya: " contrasenya
echo
echo "Contrasenya introduïda."
