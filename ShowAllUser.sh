#!/bin/bash
clear
name=$(cat /root/Desktop/UserList.txt)
for u in $name
do
chage -l $u 
done
