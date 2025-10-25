count=1
while [ $count -le 3 ]
do
read -p "Enter name $count : " name
echo "Hello, $name"
count=$((count+1))
done
