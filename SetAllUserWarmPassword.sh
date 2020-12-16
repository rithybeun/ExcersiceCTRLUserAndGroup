#!/bin/bash
clear
echo -n "Enter day_of_number to set:"
read num
for user in $( cat /etc/passwd | cut -d: -f1 )
	do
	chage -W $num $user
	done
echo "Set $num day, Completed!!"
