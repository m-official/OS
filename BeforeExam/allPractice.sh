#!/bin/bash

read -p "Enter first number: " a
read -p "Enter Second number: " b

if [ $((a%2)) -eq $((b%2)) ]; then
	echo " Please enter one odd and another even number" 
	exit 1;
fi
echo " Numbers in descending order: " 

if [ $a -gt $b ]; then 
	for ((i=a;i>=b;i--))
	do
		echo -n " $i, "
	done
else 
	for ((i=b;i>=a;i--))
	do
		echo -n " $i, "
	done
fi
echo
echo " Numbers in Ascending  order: " 

if [ $a -lt $b ]; then 
	for ((i=a;i<=b;i++))
	do
		echo -n " $i, "
	done
else 
	for ((i=b;i<=a;i++))
	do
		echo -n " $i, "
	done
fi
echo
