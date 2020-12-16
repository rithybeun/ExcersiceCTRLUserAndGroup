#!/bin/bash
clear
function chkpermis(){

echo "File: $1"

	if [ -s $1 -a -x $1 ]; then

		./$1
	else
		echo " Wait 1 second to add x permission to it"
		chmod +x $1
	echo "You File is running as"
	./$1
	fi
}
echo "1. Set All User Expried"
echo "2. Set All User Unexpried"
echo "3. Set All User WarmPassword"
echo "4. Add Group and User"
echo "5. Disable And Enable User"
echo "6. Group GID Edit"
echo "7. Show Detail User"
echo "8. Exit"
echo -n "Please input number(1,2,3,4,5,6,7,8):"
read num
case $num in 
	1) echo "Set All User Expried"
	file=SetAllUserExpried.sh
	chkpermis $file ;;
	2) echo "Set All User UnExpried"
	file=SetAllUserUnExpried.sh 
	chkpermis $file ;;
	3) echo "Set All User WarmPassword"
	file=SetAllUserWarmPassword.sh 
	chkpermis $file ;;
	4) echo "Add Depts And User"
	file=AddDeptsAndUser.sh
	chkpermis $file ;;
	5) echo "Disable And Enable User"
	file=DisableUser.sh
	chkpermis $file ;;
	6) echo "Group GID Edit"
	file=GroupID.sh
	chkpermis $file ;;
	7) echo "Show Detail User"
	file=ShowAllUser.sh
	chkpermis $file ;;
	*) echo "Exit"
	echo "See you next time | By BeunRithy" 
	exit;;
esac
