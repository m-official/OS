read -p "Enter the file name: " inFile
echo "creating $inFile file temporarily ..." 
touch $inFile
count=0
while [ -e "$inFile" ]
do 
echo "File Exists. Waiting...."
sleep 1
count=$((count+1))
[ $count -eq 3 ] && rm -f "$inFile"
done
echo "File removed"
