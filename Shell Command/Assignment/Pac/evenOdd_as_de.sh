read -p "Enter the first number : " a
read -p "Enter the second number : " b

if [ $((a%2)) -eq $((b%2)) ]; then
	echo "Please enter one odd and another even number."
	exit 1;
fi
echo "Descending Number Printing  : "
if [ $a -gt $b ];
then
	for ((i=a;i>=b;i--))
	do
		echo -n "$i "
	done
else 
	for ((i=b;i>=a;i--))
	do
		echo -n "$i "
	done
fi
echo
echo
echo "Ascending order number Printing : "
if [ $a -lt $b ];
then
	for ((i=a;i<=b;i++))
	do
		echo -n "$i "
	done
else 
	for ((i=b;i<=a;i++S))
	do
		echo -n "$i "
	done
fi


echo
