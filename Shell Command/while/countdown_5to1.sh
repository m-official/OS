n=5
while [ $n -ge 1 ]
do 
echo "countdown: $n"
n=$((n-1))
sleep 1
done
