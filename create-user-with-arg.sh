#!/bin/bash
<<hello
This is a user creation script
Create user with arguments
hello

read -p "Enter the username:" username
read -p "Enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" |sudo passwd "$username"

echo "================ Creaion of user completed ============="

sudo userdel $username

echo "================ Deletion of user completed ============"

# cat /etc/passwd |grep $username | wc| awk '{print $1}'
# echo "as wc is 0 the user is deleted"

if [ $(cat /etc/passwd |grep $username | wc | awk '{print $1}') == 0 ];
then
        echo "as wc is 0 the user is deleted"
else
        echo "user was not deleted"
fi

