#!/bin/bash -x
read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c
echo "1.a+b*c 2.a%b+c 3.c+a/b 4.a*b+c"
read -p "Select the operation that you want to perform:" x
for (( num=1; num<=4; num++ ))
do
	num=$x
	case $num in
		1) 
		echo $((a+b*c))
			;;
		2)
		echo $((a%b+c))
			;;
		3)
		echo $((c+a/b))
			;;
		4)
		echo $((a*b+c))
			;;
	esac
	break
done
