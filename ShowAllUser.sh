#!/bin/bash
clear
name=$(cat /etc/passwd | cut -d: -f1)
for u in $name
do
chage -l $u 
done
