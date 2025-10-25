echo "waiting for Omuk dir.....(Creating after 2 sec)"
(sleep 2 && mkdir testFind)&
until [ -d "testFind" ]
do
echo 'still Waiting'
sleep 1
done
echo "Directory Found"
rm -rf "testFind"
