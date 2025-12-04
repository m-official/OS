fileSrc='items.txt';
for item in $(cat $fileSrc)
do
echo "$item"
done
