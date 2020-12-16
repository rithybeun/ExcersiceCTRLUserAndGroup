#!/bin/bash
clear
echo "1. Disable User"
echo "2. Enable User"
echo "3. Check All User is Disable"
echo "4. Check All User is Enable"
echo -n "Input Number(1,2,3,4):"
read num
	case $num in
		1) echo "Disable User"
		echo -n "Enter name to disable account:"
		read name
		usermod -L $name
		echo "Disable user $name is completed";;
		2) echo "Enable User"
		echo -n "Enter Name to enable account:"
		read name
		usermod -U $name
		echo "Enable user $name is completed";;
		3) echo "Check All User is Disable"
		for user in $(cat /etc/shadow | grep -r ':![$]' /etc/shadow | cut -d: -f1)
			do 	
			echo "Username $user is disable account"
			done
		echo "Completed";;
		4) echo "Check All User is Enable"
		for user in $(cat /etc/shadow | grep -r ':[$]' /etc/shadow | cut -d: -f1)
			do
			echo "UserName $user is enable account"
			done
		echo "Completed";;
		*) echo "Exit"
		echo "See you next time | By BeunRithy"
		exit;;
esac
