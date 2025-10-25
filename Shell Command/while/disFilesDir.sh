echo "Files in current directory: "
count=1
#for f in $(ls)
ls | while read f
do
echo "File $count : $f"
count=$((count+1))
done
