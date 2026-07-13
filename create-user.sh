#!/bin/bash

<< help
this is a shell script
to create new user
help

echo "==================Creation of user started========="


read -p "enter the username:" username

read -p "enter the passsword:" password

# -p --> encrypted password
sudo useradd -m "$username"
echo -e "$password\n$password" |sudo passwd "$username"

echo "=======Creation of user completed=============="

