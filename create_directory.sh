#!/bin/bash

reply='y'
while [ $reply = 'y' -o $reply = 'Y' ]
do
 clear
 echo "***************Create a Directory***************"
 echo "Wish to create a Directory(press y for yes, any other key for no)"
 
 read reply

if [ $reply = 'n' -o $reply = 'N' ]
	then
	break;
fi

 echo "Give the path to the directory where you want to create a directory"
        read path

if [ -d $path ]
        then
        echo "Directory exists" 
 else
        mkdir $path
	echo "Directory is created!.";
 fi

 echo "Do you wish to continue(y/Y)"
 
 read reply
 done

bash directory_Management_System.sh

