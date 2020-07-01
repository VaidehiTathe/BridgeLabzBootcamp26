#!/bin/bash -x
shopt -s extglob
echo "Enter name: "
read name
pat="^[A-Z]{1}[a-z]{2,2}$"
if [[ $name =~ $pat ]]
then 
	echo "Yes"
else
	echo "No"
fi
