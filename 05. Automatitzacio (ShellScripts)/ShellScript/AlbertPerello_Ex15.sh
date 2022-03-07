#!/bin/bash

#Comprovam si el nostre nivell de privilegis es 0, es a dir, ser root
if [ "$EUID" == 0 ]
then
	#Si som root, mostrara aquest missatge
	echo "Soc l'amo del món"
else
	#Sino, s'executara ell mateix com a root
	sudo $0
fi
