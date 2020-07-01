#!/bin/bash -x
read -p "Enter number:" x
for (( day=1; day<=7; day++ ))
do
	day=$x
	case $day in
		1)
		echo "Monday"
			;;
		2)
		echo "Tuesday"
			;;
		3)
		echo "Wednesday"
			;;
		4)
		echo "Thursday"
			;;
		5)
		echo "Friday"
			;;
		6)
		echo "Saturday"
			;;
		7)
		echo "Sunday"
			;;
	esac
	break
done
