max=${value[0]}
min=${value[0]}
for(( i=1; i<=10; i++))
do
	value[i]=$(( RANDOM%900 + 100 ))
        echo ${value[@]}
	len=${value[@]}
        for (( j=0; j<=len-1; j++ ))
        do
		for (( k=1; k<=len-1; k++ ))
		do
	        	if [ ${value[j]} -gt ${value[k]} ]
        		then
                		max=${value[j]}
	                else
        	                min=${value[k]}
                	fi
		done
		break
        done
done
echo "maximum num is:"$max
echo "minimum num is:"$min
