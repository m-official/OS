read -p "Enter the fie name :" inFile
if [ -e "$inFile" ];
then 
echo "File is Exist"
else 
echo "File Does not exists"
fi
