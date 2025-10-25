# Pings Google once and suppresses output
ping -c 1 8.8.8.8 &> /dev/null   
echo "Exit code: $?" 
if [ $? -eq 0 ]  
# Checks if the exit status of the ping command is 0 (successful)
then
    echo "Internet is working"   # Prints message if ping is successful
else
    echo "Internet is not working"  # Prints message if ping fails
fi

