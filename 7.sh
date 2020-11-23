clear
if [ $# -eq 0 ]
then
echo "No arg"
else
num=$1
sum=0
while [ $num -ne 0 ]
do
rem=`expr $num % 10`
sum=`expr $sum + $rem`
num=`expr $num / 10`
done
echo "sum of digit is $sum"
fi
