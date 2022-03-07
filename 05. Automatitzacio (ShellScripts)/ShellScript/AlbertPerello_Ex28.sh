#!/bin/bash

#Demanam el nom de l'usuari i en cream una variable
echo "Escriu el nom d'un usuari"
read user

for i in /etc/group
do
	grups=`grep -w $user $i|cut -d: -f1| sort`
	echo
	echo "$user:" $grups
done
