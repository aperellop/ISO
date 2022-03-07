#!/bin/bash

# Cream un fitxer temporal
touch tmp

# Per cada fitxer .txt del directori actual, es guardaran les línies que contenguin la paraula examen al fitxer temporal, sense solapament
for i in *.txt
do
	grep "examen" $i >> tmp
done

# mostrarem el nombre de línies totals i eliminam el fitxer temporal
# es mostren el nombre de línies que contenen la paraula examen dels fitxers de text del directori actual
wc -l < tmp
rm tmp
