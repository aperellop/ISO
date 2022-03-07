#!/bin/bash

#Control de parametres per comprovar que s'ha introduit com a minim 1 numero
if `test $# -gt 0`
#Si s'ha introduit al menys un parametre:
then
	#Iteram sobre els parametres introduits
	for i in $@
	do
		#Cream una variable amb el valor del parametre amb el que estam iterant
		res=$i

		#Mentre $res sigui major que 0:
		while [ $res -gt "0" ]
		#Li restarem 2
		do
			res=`expr $res - 2`
		done

		#Si $res és igual que 0:
		if `test $res -eq "0"`
		#Rebrem aquest missatge
		then
			echo "$i és parell"
		#Si $res no és igual a 0, i per tant menor que 0, rebrem aquest missatge
		else
			echo "$i és senar"
		fi
	done
#Si no s'ha introduit cap parametre:
else
	#Missatge d'error
	echo "ERROR: Has d'introduir al menys un numero per parametre"
	exit 1
fi
