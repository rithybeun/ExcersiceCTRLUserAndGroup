#!/bin/bash
clear

echo -n "Enter YYYY-MM-DD to expried all account user:"
read num
echo "Please Wait..."
year=$(echo $num | cut -d- -f1)
month=$(echo $num | cut -d- -f2)
day=$(echo $num | cut -d- -f3)
if [ $(echo $year | wc -c ) -gt 4 ] && [ $(echo $month | wc -c ) -lt 4 ] && [ $(echo $day | wc -c ) -lt 4 ]; then
	for user in $( cat /etc/passwd | cut -d: -f1)
		do
			usermod -e $num $user
		done
	echo "All user set Expried on Date: $num"
else
	echo "Error"
fi

