echo "Testing networks connectivity"
until ping -c 1 google.com &> /dev/null
do
echo "Network is down. Retrying...."
sleep 2
done 
echo "Network is up"
