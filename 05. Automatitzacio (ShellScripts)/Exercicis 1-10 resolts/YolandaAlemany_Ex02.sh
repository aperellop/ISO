#!/bin/bash

comanda=ls

echo "$comanda" # Es mostrarà el valor de la variable, ls
echo `$comanda` # S'executarà el contingut de la variable, la comanda ls
echo '$comanda' # Es mostrarà literalment la cadena de caràcters, $comanda
