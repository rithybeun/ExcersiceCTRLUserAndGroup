#!/bin/bash
clear
echo "Please Wait..."
for user in $( cat /etc/passwd | cut -d: -f1 )
	do
	chage -E -1 $user
	done
echo "All user will unexpried, Completed"
