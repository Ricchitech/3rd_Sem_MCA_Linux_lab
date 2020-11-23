clear
if [ $# -lt 2 ]
then
echo "enter at least two filename"
exit
fi
for word in `cat $1`
do
    for file in $*
  do
if [ "$file" != "$1" ]
      then
      echo "THE WORD FREQUENCY IS --$word--in the $file is `grep -iow $word $file | wc -w`"
      fi
      done
 done
