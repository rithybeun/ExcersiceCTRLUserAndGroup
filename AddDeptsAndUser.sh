#!/bin/bash
clear
echo "1. Add Group With User"
echo "2. Show Group and User with"
echo "3. Exit"
echo -n "Input number(1,2,3):"
read num
case $num in 
	1) echo "Add Group With User"
echo -n "Enter num_of_Depts:"
read dept
echo -n "Enter num_of_Stu for each Dept:"
read stu
	for((i = 0; i < dept; i++))
		do
		echo -n "Enter Name Depts $((i+1)): " 
		read nameDept
		deptsNum[$i]=$nameDept 
	done
	echo "Name of Depts"
	for nDept in "${deptsNum[@]}"
		do
		groupadd $nDept
		for((j = 1 ; j <= stu; j++))
			do
				uname=username$j
				useradd $uname
				randompw=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
				echo $randompw | passwd --stdin $uname
				usermod -a -G $nDept $uname
			done
		done
echo "Add Depts And User is Completed";;
	2) echo "Show Group and User with"
	cat /etc/group | cut -d: -f1,4
	echo "Completed";;
	*) echo "Exit"
	echo "See you soon | By Beun Rithy"
	exit;;
esac
