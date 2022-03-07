#!/bin/bash

echo "Avui és" `date +%d/%m/%y`

mes=`date +%m`

echo $mes

if `test $mes -le 06`
then
	echo "El més $mes es troba als primers sis mesos de l'any"
else
	echo "El més $mes es troba als darrers sis mesos de l'any"
fi
