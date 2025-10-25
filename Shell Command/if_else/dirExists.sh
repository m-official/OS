read -p "Enter the dir name :" dir
if [ -d "$dir" ];
then 
echo "Dir is Exist"
else 
echo "Dir Does not exists"
fi
