#!/bin/bash

#Demanam un fitxer
echo "Introdueix un fitxer amb la seva ruta absoluta"
read fitxer

#Comprovam que el fitxer existeix
if `test -e $fitxer`
then	
	#Missatge d'error
	echo "Has d'introduir la ruta absoluta d'un fitxer existent"
	exit 1
fi

#Demanam el paquet
echo "Introdueix el nom del paquet al qual pertany"
read paquet

#Amb aquesta comanda veiem si el paquet del fitxer es el $paquet
if [ "dpkg --search $fitxer" = $paquet ]
then
	#Missatge de negació
	echo "El fitxer no pertany al paquet"
else
	#Missatge de confirmació
	echo "El fitxer pertany al paquet"
fi
