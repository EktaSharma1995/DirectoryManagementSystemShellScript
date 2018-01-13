#!/bin/bash

clear
echo "**************Welcome to Directory Management System*************"
echo "How can I help you today?"
echo "Enter :- "
echo "\t 1. Create a Directory"
echo "\t 2. Create Position of Directory"
echo "\t 3. Rename a Directory"
echo "\t 4. Remove a Directory"
echo "\t 5. Exit"

echo "Enter Choice"
read choice
case $choice in
1)sh create_directory.sh
;;
2)sh create_position_of_directory.sh
;;
3)sh rename_directory.sh
;;
4)sh remove_directory.sh
;;
5)exit
;;
esac



