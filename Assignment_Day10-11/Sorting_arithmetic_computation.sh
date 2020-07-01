#!/bin/bash -x
read -p "Enter three numbers:" a b c
compute1=$((a+b*c))
compute2=$((a*b+c))
compute3=$((c+a/b))
compute4=$((a%b+c))

declare -A dict1
dict1[key1]="$compute1"
dict1[key2]="$compute2"
dict1[key3]="$compute3"
dict1[key4]="$compute4"
echo "Dictionary is:" ${!dict1[@]} ${dict1[@]}

declare -a Array1
Array1=(${dict1[@]})
echo "values in Array:" ${Array1[*]}

for(( i=0; i<4; i++))
do
	for(( j=0; j<4-i-1; j++))
	do
		if [ ${Array1[j]} -gt ${Array1[$((j+1))]} ] 
        	then
            		# swap 
		        temp=${Array1[j]} 
            		Array1[$j]=${Array1[$((j+1))]}   
            		Array1[$((j+1))]=$temp 
        	fi
	done
done
echo "Array in Ascending order:" ${Array1[*]}

for(( i=0; i<4; i++))
do
        for(( j=0; j<4-i-1; j++))
        do
                if [ ${Array1[j]} -lt ${Array1[$((j+1))]} ]
                then
                        # swap
                        temp=${Array1[j]}
                        Array1[$j]=${Array1[$((j+1))]}
                        Array1[$((j+1))]=$temp
                fi
        done
done
echo "Array in Descending order:" ${Array1[*]}


