#!/bin/bash

#Comprovam que el parametre esta entre 0 i 6
if [ $1 -ge 0 -a $1 -le 6 ]
then
	#Canviam de runlevel
	init $1
else
	#Missatge d'error
	echo "Has d'introduir un numero entre 0 i 6"
	exit 1
fi
