#!/bin/bash

testdir=/Users/ektasharma/os/testDir

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Rename a Directory***************"
 echo "Wish to rename a Directory(press y for yes, any other key for no)"
 
 read reply

if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
fi

 echo "Give the path of the directory you want to rename"
	read path
	
echo "Give the path of the directory you want to change with"
	read newpath
if [ -d $path ]
then 
echo "Directory exists"
echo "source: $testdir"
echo "dest: $path"
mv -i "$path" "$newpath"
echo "Done" 
else
	echo "Error: Directory doesn't exists" 
 fi

 echo "Do you wish to continue(y/Y)"
 
 read reply
 done

bash directory_Management_System.sh

