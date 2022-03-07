#!/bin/bash

#Amb aquesta comanda veiem el contingut del directori /etc/passwd
#Amb el cut seleccionam el directori de l'interpret de comandes
#Ordeman i llevam les comandes repetides
#Ens quedam amb les 10 darreres
#I amb awk feim que nomes ens mostri el darrer camp de l'string
cat /etc/passwd|cut -d: -f7|sort|uniq -c|tail -10|awk '{print $NF}'
