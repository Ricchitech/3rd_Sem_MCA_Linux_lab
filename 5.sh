clear
if [ $# -eq 0 ]
then
echo "Enter the cmd line arg"
else
for file in $*
do if [ -e $file ]
then
time=`ls -l $file | cut -d " " -f8`
echo "$time"
else
echo "file does not exist"
fi
done
fi
