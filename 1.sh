clear
if [ $# -eq 0 ]
then
echo "No argument"
elif [ $# -le 2 ]
then
echo "Enter atleast 2 argument"
else
list=" "
for var in $*
do
rev="$var $list"
list=$rev
done
echo "Original argument are : $*"
echo "Reversed argument are : $list"
fi
