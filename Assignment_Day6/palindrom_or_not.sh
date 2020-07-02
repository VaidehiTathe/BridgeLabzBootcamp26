#!/bin/bash/ -x
function palindrome()
{
	reverse=0
	number=$num
	while [ $num -gt 0 ]
	do
		a=`expr $num % 10 `
		n=`expr $num / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done
	echo $reverse
	if [ $number -eq $reverse ]
	then
    		echo "Number is palindrome"
	else
		echo "Number is not palindrome"
	fi
}
read -p "Enter a number:" num
palindrome "$num"

