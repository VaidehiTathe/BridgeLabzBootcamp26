#!/bin/bash -x
month=(March April May June)
read -p "Enter Month:" m
read -p "Enter day:" day
if [ $day -ge 1 ] && [ $day -le 31 ]
then
	for m in "${month[@]}"
	do
		echo "True"
		break
	done
fi

