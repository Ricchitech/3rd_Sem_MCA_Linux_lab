clear
if [ $# -eq 0 ]
then
echo "No arg"
else
for var in $*
do
login=$var
grep $login /etc/passwd >file1
if [ $? -eq 0 ]
then
echo login names : $login
cut -d ":" -f6 file1
fi
done
fi
