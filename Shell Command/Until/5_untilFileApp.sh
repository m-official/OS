# wait  until a file appears


echo "waiting for ready .txt file.......(creating after 3 second)"
(sleep 3 && touch ready.txt) &
until [ -e 'ready.txt' ]
do
echo "still waiting"
sleep 1
done
echo "File found"

rm -f ready.txt
