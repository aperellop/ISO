#!/bin/bash

#Cream les variables de cadascun dels paràmetres
dir=$1
ext=$2
str=$3

#Cream la variable del contador i resultat que mostrarem per pantalla
contador=0

#Control de parametres per comprovar que el nombre de parametres es 3
if `test $# -eq 3`
#Si el nombre de parametres és 3:
then
	#Comprovam que el directori introduit existeix
	if `test -d $dir`
	#Si existeix:
	then
		#Iteram sobre tots els arxius del directori amb l'extensio indicada
		for i in $dir\.$ext
		do
			#Entram al directori
			cd $dir
			#Eliminam el fitxer que coincideix amb el que s'ha introduit per paràmetre
			rm $str.$ext
			#Contam les vegades que es repeteix el bucle
			contador=`expr $contador + 1`
		done
	#Si no existeix:
	else
		#Missatge d'error
		echo "ERROR: El directori no és correcte"
		exit 1
	fi
#Si el nombre de parametres no es 3:
else
	#Missatge d'error
	echo "ERROR: Has introduit un nombre incorrecte de paràmetres"
	exit 1
fi
echo "Fitxers eliminats: $contador"
