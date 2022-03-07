#!/bin/bash

#Cream una variable amb el format de la data que volem
data=`date +%Y_%m_%d`

#Si el parametre es un directori existent
if `test -d $1`
then
	#Cream un arxiu .gz del directori introduit per parametre
	tar cvfz backup_$data.tar.gz $1
fi
