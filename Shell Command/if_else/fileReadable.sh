read -p "Enter the fie name :" inFile
if [ -r "$inFile" ];
then 
echo "File is readable"
else 
echo "File is not readable"
fi
