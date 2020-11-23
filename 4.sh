clear
if [ $# -eq 0 ]
then
echo "No argument"
else
for file in $*
do
if [ -e $file ]
then
upper=`echo $file | tr '[a-z]' '[A-Z]'`
echo "file is converted in to : $upper"
else
echo "file does not exist"
fi
done
fi
