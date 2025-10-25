#!/bin/bash
echo 'choose an option'
echo '1. show date'
echo '2.show current directory'
echo '3.Show logged in user'
read -p 'Enter you choice[1 to 3]' choice
if [ $choice -eq 1 ]; then 
	date
elif [ $choice -eq 2 ]; then 
	pwd
elif [ $choice -eq 3 ]; then 
	who
else
	echo 'Invalid choice'
fi

