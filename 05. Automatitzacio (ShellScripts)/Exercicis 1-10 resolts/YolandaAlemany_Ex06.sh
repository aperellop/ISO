#!/bin/bash

# Comprovam que s'hagin introduit paràmetres
if `test $# -eq 0`
then
	echo "ERROR: Introdueix al menys un paràmetre"
fi

# per cada paràmetre, mostram el missatge Hola [paràmetre]
# amb for var in $* feim un recorregut per tots els paràmetres
for nom in $*
do
	echo "Hola $nom"
done
