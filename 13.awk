BEGIN { print "REMOVING DUPLICATE LINE \n"}
{
   line[++n]=$0
}
END{
     for(i=1;i<=n;i++)
     {
        flag=1
        for(j=1;j<i;j++)
           if (line[i] == line[j])
             flag=0
        if(flag==1)
        print line[i]
       }
     }
