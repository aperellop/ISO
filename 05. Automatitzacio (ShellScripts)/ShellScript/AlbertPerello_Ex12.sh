#!/bin/bash

#Nomes s'accepten minuscules
min='^[a-z]+$'

#Per x a uns parametres
for x in $@
do
	#Si n no compleix el control d'errors, donara error
	if ! [[ $x =~ $min ]]
	then
		echo "S'ha d'escriure en minúscules"
		exit 1
	#Si s'ha escrti en minuscules
	else
		#Es crea una variable on es creen fitxers amb el primer byte dels parametres
		inicial=$(echo $x|head -c 1)
		#I introduim el parametre al fitxer amb la seva inicial
		echo $x >> $inicial
	fi
done
