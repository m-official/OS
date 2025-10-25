#!/bin/bash
read -p "Enter the number you want to factorial:" fact
res=1
for ((i=1;i<=fact;i++))
do
	res=$((res*i))
done 
echo "Factorial of $fact is: $res"



