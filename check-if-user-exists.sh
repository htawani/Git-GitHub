#!/bin/bash

<< info
This SHELL script checks if the user exists
info

read -p "Enter the username to check the current status -->" username

count=$(cat /etc/passwd |grep $username |wc | awk '{print $1}')

# echo "$count"

if [ $count -eq 0 ];
then
echo "User $username does not exist"
else
        echo "User $username exists"

fi

