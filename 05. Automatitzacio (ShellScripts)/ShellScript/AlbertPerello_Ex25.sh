#!/bin/bash

#Comprovam que el parametre es un directori existent
if `test -d $1`
then
	#Bucle que itera sobre tots els fitxers .c del directori
	for f in $1/*.c
	do
		#Ficam dins una variable la comanda per contar les linies amb contingut del fitxer
		linies=`grep -vc '^$' $f`
		#Mostram el fitxer amb el numero de linies amb contingut d'aquest
		echo "$f" "linies >> linies.txt
	done
else
	#Missatge d'error
	echo "Introdueix un directori existent"
	exit 1
fi