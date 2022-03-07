#!/bin/bash

#Cream una variable amb el numero des del qual començarem la progresio aritmetica
num1=1

#Demanam un nuero a l'usuari
echo "Escriu un numero decimal"
read num2

#Feim un bucle perque al $num1 se li vagi sumant 1 fins arribar al numero que l'usuari ha escrit
while [ $num1 -le $num2 ]
do
	echo $num1
	((num1++))
done
