#!/bin/bash -x
for(( i=1; i<=100; i++ ))
do
        value[i]=$((i))
	for(( j=${value[1]}; j<=99; j++ ))
	do
		if [ $((j%11)) -eq 0 ]
		then
			echo $j
		fi
	done
	break
done

