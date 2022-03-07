#!/bin/bash

#Demanam el numero d'usuaris que volem veure
echo "Escriu el numero d'usuaris que vulguis veure"
read N

#amb aquesta comanda llistam els usuaris, els ordenem i ens quedam amb els N darrers
cut -d: -f1 /etc/passwd | sort | tail -$N
