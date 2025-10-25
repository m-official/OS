n=5
until [ $n -lt 1 ]
do
echo "countdown: $n"
n=$((n-1))
sleep 1
done

