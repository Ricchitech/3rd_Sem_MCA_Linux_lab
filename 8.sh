clear
if [ $# -lt 1 ]
then
echo "Pass at least one arguments"
exit
fi
echo "input a word"
read word
for file in $*
do
grep -iv "$word" $file
done
