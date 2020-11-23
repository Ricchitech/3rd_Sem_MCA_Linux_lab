clear
set `date`
x=$2
if [ $x -le 9 ]
then
cal | sed "s/$x/*/"
else
cal | sed "s/$x/**/"
fi
