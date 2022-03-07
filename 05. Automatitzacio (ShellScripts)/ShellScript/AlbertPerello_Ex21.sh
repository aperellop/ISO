#!/bin/bash

#Comprovam que s'hagin introduit dos parametres
if `test $# -eq 2`
then
	#Comprovam que el primer paràmetre es un directori existent
	if `test -d $1`
	then
		for f in $1/*
		do
			if [ -f "$f" ]
			then
				#Cercam el numero de vegades que es repeteix el parametre a cada fitxer
				rep=`cat $f | grep -c $2`
				#Mostram el resultat
				echo "$f: $rep"
			fi
		done
	else
		#Missatge d'error
		echo "Has d'escriure un directori existent i una paraula en aquest mateix ordre"
		exit 1
	fi
else
	#Missatge d'error
	echo "Has d'introduir dos parametres: un directori i una paraula"
	exit 1
fi
