#!/bin/bash

# Comprovam que s'hagi introduit un paràmetre numèric
if `text $# -ne 1`
then
	echo "ERROR: has d'introduir un paràmetre numèric."
	exit 1
fi

echo "Progressió aritmètica"

i=1 # contador. L'utilitzarem en el bucle, a cada interació s incrementarà en 1
num=1 # num és el resultat que mostrarem per pantalla

while `test $i -le $1`
do
	echo "$num"
	num=`expr $num + 1`
	i=`expr $i + 1`
done

echo "Progressió geomètrica"

i=1 # contador
num=1 # num és el resultat que mostrarem per pantalla
while `test $i -le $1`
do
	echo "$num"
	num=`expr $num \* 2 `
	i=`expr $i + 1`
done
