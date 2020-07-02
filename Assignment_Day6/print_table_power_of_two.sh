#!/bin/bash -x
read -p "Enter the number:" num
for (( i=1; i<=10; i++ ))
do
	num1= $((num**i))
	echo $num1
done
