num=10
until [ $num -lt 1 ]
do
echo "CountDown: $num"
num=$((num-1))
sleep 1
done
