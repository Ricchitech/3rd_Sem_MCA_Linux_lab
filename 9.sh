clear
hournow=`date | cut -c 27-28`
user=`echo $USER | cut -d "/" -f 2`
      case $hournow in
      [0-1][0-1]|0[2-9]) echo "good morning ms/mr: $user";;
      1[2-5]) echo "good afternoon ms/mr: $user";;
      1[6-9]) echo "good evening ms/mr: $user";;
      *) echo "good night ms/mr: $user";;
      esac
      
