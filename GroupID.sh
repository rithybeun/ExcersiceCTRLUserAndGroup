#!/bin/bash	
clear
echo "1. Show All Group Have"
echo "2. Edit Group GID"
echo "3. Exit"
echo -n " Please Input number:"
read num
	case $num in 
		1) echo "Show All Group Have"
		cat /etc/group | cut -d: -f1,3
		echo "Completed!!";;
		2) echo "Edit Group GID"
		echo -n "Enter name Group to Edit GID:"
		read name
		echo -n "Enter GID form $name Group: "
		read id
			groupmod -g $id $name
		echo "GID has changed completed!!";;
		*) echo "Exit"
		echo "See you next time | By BeunRithy"
		exit;;
esac
