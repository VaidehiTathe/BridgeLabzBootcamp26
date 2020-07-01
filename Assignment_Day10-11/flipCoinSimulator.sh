#!/bin/bash -x
isHead=1
isTail=0
numflip=20
countHead=0
countTail=0
while [[ $countHead -lt 21 && $countTail -lt 21 ]]
do
	flipCheck=$((RANDOM%2))
	case $flipCheck in
		$isHead)
			((countHead++))
				;;
		$isTail)
			((countTail++))
				;;
	esac
#	totalHead=$countHead
#	totalTail=$countTail
done
echo "Number of times Head occur :" $countHead
echo "Number of times Tail occur:" $countTail

if [[ $countHead -eq 21 && $countTail -eq 21 ]]
then
	#flipCoin()
	echo "Tie"
elif [[ $countHead -eq 21 ]]
then
	count=$(( countHead-countTail ))
        echo "Head won by " $count
else
	count=$(( countTail-countHead ))
        echo "Tail Won by " $count
fi

