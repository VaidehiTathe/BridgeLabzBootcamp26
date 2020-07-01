#!/bin/bash -x
shopt -s extglob
echo "Enter mobile number:"
read number
pat="^[0-9]{2}[ ][1-9]{1}[0-9]{9}$"
#[ ]^[1-9][0-9]{9}$"
if [[ $number =~ $pat ]]
then
	echo "Yes"
else
	echo "No"
fi
