#!/bin/bash -x
read -p "Enter the year(yyyy):" year
if [ $((year%4)) -ne 0 ]
then
	echo "Not a leap year"
elif [ $((year%100)) -eq 0 ]
then
	echo "Not a leap year"

elif [ $((year%400)) -eq 0 ]
then
	echo "Its a leap year"

else
	echo "It is a leap year"
fi
