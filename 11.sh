clear
echo "Enter the login name of user"
read name
userid=`who | grep -w "$name"`
        if [ $? -ne 0 ]
        then
             echo "$name is not logged in yet"
             exit
        fi
        echo "$userid"
hrs=`echo "$userid" | cut -c 34-35`
min=`echo "$userid" | cut -c 37-38`
echo $hrs
echo $min
hrnow=`date | cut -c 28-29`
minnow=`date | cut -c 31-32`
echo $hrnow
echo $minnow
hour=`expr $hrnow - $hrs`
minutes=`expr $minnow - $min`
echo "user: $name is working since $hour hrs $minutes minutes"
