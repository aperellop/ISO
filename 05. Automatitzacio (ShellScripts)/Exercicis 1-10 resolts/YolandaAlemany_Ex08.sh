#!/bin/bash

# comprovam que només s'hagi introduït un paràmetre
if `test $# -ne 1`
then
	echo "ERROR: introdueix un paràmetre numèric"
	exit 1
fi

i=$1 # guardam el factorial a una variable, a cada iteració del bucle, la decrementarem (-1)
fact=1
while `test $i -gt 1`
do
	fact=`expr $fact \* $i` # multiplicam el resultat per el nombre que es va decrementant
	i=`expr $i - 1`
done 	

echo "El factorial de $1 és $fact"
