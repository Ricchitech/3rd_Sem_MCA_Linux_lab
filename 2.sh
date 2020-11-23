clear
f1=$1
f2=$2
if [ -e $f1 -a -e $f2 ]
then
     per1=`ls -l $f1 | cut -d " " -f1`
     per2=`ls -l $f2 | cut -d " " -f1`
if [ $per1 = $per2 ]
then
     echo "Permissions are equal" echo "$f1=$per1" echo "$f2=$per2"
else
     echo "Permissions are not equal"
     echo "$f1=$per1"
     echo "$f2=$per2"
fi
else
     echo "file does not exist"
fi