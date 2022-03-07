#!/bin/bash

#Iteram sobre tots els fitxers del directori actual
for i in ./*
do
	#Variable amb comanda per consultar la mida del fitxer
	bytes=`stat -c %s $i`
	#Variable amb comanda per mostrar els fitxers que pesin igual o mes del parametre indicat en bytes
	fitxer=`find $i -size $1c && find $1 -size +$1c`
	#Mostram mida i nom del fitxer
	echo $bytes $fitxer
done
