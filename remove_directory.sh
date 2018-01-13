#!/bin/bash

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Remove a Directory***************"
 echo "Wish to remove a Directory(press y for yes, any other key for no)"
 
 read reply

 if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
 fi

 echo "Give the path of the directory you want to remove"
 read path
	
 if [ -d $path ]
 then 
  echo "Directory exists"
  echo "source: $path"

  echo "Directory is empty or not?"
  read replyforemptyornot

   if [ $replyforemptyornot = 'empty' -o $replyforemptyornot = 'Empty' ]
   then
    echo "Directory: $replyforemptyornot"
    rmdir "$path"
    echo "Empty dir deleted"
   else
    rm -ri "$path"
    echo "Non-empty dir deleted" 
   fi
 else
  echo "Error: Directory doesn't exists" 
 fi

echo "Do you wish to continue(y/Y)"
 
read reply
done

bash directory_Management_System.sh

