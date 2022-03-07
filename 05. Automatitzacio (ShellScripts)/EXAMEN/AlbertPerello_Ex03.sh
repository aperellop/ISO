#!/bin/bash

#Control de parametres per comprovar que no se'n ha introduit cap
if `test $# -eq 0`
#Si no se n'ha introduit cap:
then
	#Demanam el nom del fitxer i el ficam dins una variable
	echo "Escriu el nom del fitxer que conte els numeros"
	read fitx

	#Comprovam que el fitxer introduit existeix i es un fitxer regular
	if `test -f $fitx`
	#Si ho és:
	then
		#Iteram dins el contingut del fitxer
		for i in `cat $fitx`
		do
			#Cream una variable per cadascun dels dos numeros de la fila
			num1=`echo $i|cut -d"|" -f1`
			num2=`echo $i|cut -d"|" -f2`

			#Cream una variable amb el resultat de restar els dos numeros
			res=`expr $num1 - $num2`

			#Si $res és 0, mostrara el respectiu missatge
			if `test $res -eq "0"`
			then
				echo "Els nombres són iguals: $num1"
			fi

			#Si $res és menor que 0, mostrara el respectiu missatge
			if `test $res -lt "0"`
			then
				echo "El nombre $num1 és menor que $num2"
			fi

			#Si $res és major que 0, mostrara el respectiu missatge
			if `test $res -gt "0"`
			then
				echo "El nombre $num1 és major que $num2"
			fi
		done
	#Si el fitxer no és un fitxer regular:
	else
		#Tornarem executar l'script fins que el fitxer hagi compleixi el control de parametres
		./$0
	fi
#Si s'ha introduit qualque paràmetre:
else
	#Missatge d'error
	echo "ERROR: No has d'introduir res per parametre"
	exit 1
fi
