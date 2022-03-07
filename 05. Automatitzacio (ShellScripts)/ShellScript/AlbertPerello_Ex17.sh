#!/bin/bash

#Controlam que s'introdueixin dos parametres
if `test $# -lt 2 -o $# -gt 2`
then
	echo "Has d'introduir dos paràmetres"
	exit 1
fi

#Cream les variables
fitxer=$1
parts=$2

#Cream el fitxer i li introduim cert contingut
touch $fitxer.txt | echo "0123456789" >> $fitxer.txt

#Dividim el fitxer origen
split -n $parts $fitxer.txt

echo "Fitxers generats"
