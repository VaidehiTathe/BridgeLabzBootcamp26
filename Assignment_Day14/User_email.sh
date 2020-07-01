#!/bin/bash -x
shopt -s extglob
echo "Enter email id:"
read email
pat="^[0-9a-zA-Z]+([.][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-ZA-Z]{2,3}(.[a-zA-Z]{2,2})*$"
if [[ $email =~ $pat ]]
then
	echo "yes"
else
	echo "No"
fi
