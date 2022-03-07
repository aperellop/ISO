#!/bin/bash

#cream un bucle que va recorreguent tots els arguments de la llista que ens crea l'$@
for nom in "$@"
do
	echo "Hola $nom"
done
