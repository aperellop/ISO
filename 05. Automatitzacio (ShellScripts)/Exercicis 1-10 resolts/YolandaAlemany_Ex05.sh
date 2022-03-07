#!/bin/bash

# guardam el mes actual a una variable
mes=`date +%m`

if `test $mes -le 6`
then
	echo "Primers 6 mesos de l'any"
else
	echo "Darrers 6 mesos de l'any"
fi
