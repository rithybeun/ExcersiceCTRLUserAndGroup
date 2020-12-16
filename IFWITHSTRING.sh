#!/bin/bash
echo "Check All User is Disable"
echo "Name"
read n
compage=$(cat /etc/shadow | grep -r $n /etc/shadow | cut -d: -f1)	
for u in $compage
	do
	num=$((i++))
	Namuser[num]=$u	
	done		
	for dd in "${Namuser[@]}"
	do 
	 if [ "$n" = "$dd" ] && []; then
		echo "$n"
	else
		echo "Not Found"
	fi
	done
