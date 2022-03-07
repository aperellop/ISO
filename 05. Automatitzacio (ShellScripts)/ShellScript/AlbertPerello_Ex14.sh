#!/bin/bash

#Comprovam que el numero de parametres sigui un
if `test $# -eq 1`
then
	#Comprovam que el directori existeix
	if `test -d $1`
	then
		#Si el directori existeix, ens accedirà a aquest
		echo "El directori $1 existeix"
		cd $1
		pwd
	else
		#Si el directori no existeix, el crearà
		echo "El direcotri $1 no existeix"
		mkdir $1 ; pwd ; cd $1 ; pwd

		if `test -d $1`
		then
			#Si no el directori no es pot crear, en dirà aquest missatge
			echo "No s'ha pogut creat el directori"
		else
			#Si el directori s'ha pogut crear, ens dirà aquest missatge
			echo "Directori creat"
		fi
	fi
else
	echo "Has d'introduir només un paràmetre"
fi

