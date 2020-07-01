#!/bin/bash -x
head=1
coin_flip=$((RANDOM%2))
if [ $coin_flip -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi
