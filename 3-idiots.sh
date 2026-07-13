#!/bin/bash

# user defined variables
hero="rancho"
villan="virus"

# $ --> use for variable <-- value, identiger
echo "3 idiots ka hero hai $hero"
echo "3 idiots ka villan hai $villan"

# shell / environment variables bhi hote hey	 [PRE-DEFINED VARIABLES]

echo "current logged in user $USER"

# to create user defined variables
# values from the user only
# read - to take input from user
# -p to print message on screen
# fullname = variable name

# user input
read -p "Rancho ka poora name kya tha?" fullname
echo "Rancho ka poora name $fullname tha"

# Arguments [to provide input at the time to executing script from prompt/terminal]
# first value of a line in argument is 0 then 1,2,3,..
# ./3_idiots.sh raju farhan rancho

echo "movie ka name: $0"
echo "first idiot: $1"
echo "second idiot: $2"
echo "third idiot: $3"

#$@ - to print all the arguments, it will start from $1
echo "Hence the 3 idiots are $@"

