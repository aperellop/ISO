#!/bin/bash

# comprovam que el nombre de paràmetres és 2
if `test $# -ne 2`
then
	echo "ERROR: introdueix dos paràmetres numèrics"
	exit 1
fi

# si el primer paràmetre és el menor que el segon, anirem sumant d'un a un, fins arribar al paràmetre 2
if `test $1 -lt $2`
then 
	i=$1

	while `test $i -le $2`
	do
		printf "$i "
	
		i=`expr $i + 1`
	done
# si el segon eś menor, anirem restant d'un a un fins arribar al paràmetre 2
else
	i=$1
	
	until `test $i -lt $2`
	do
		printf "$i "

		i=`expr $i - 1` 
	done
fi

printf "\n"
