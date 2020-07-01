arr=( 1 2 3 4 5 6 7 8 )
#echo ${arr[@]}
len=${arr[@]}
for((j=0;j<len;j++))
do
	for((k=1;k<len+1;k++))
    	do
        	for((l=2;l<len+1;l++))
           	do
         		if [ $(($((${arr[j]}))  +  $((${arr[k]})) + $((${arr[l]} )))) -eq 0 ]
         		then
       	 			echo "triplet in array with sum zero = "
        			echo ${arr[j]} ${arr[k]} ${arr[l]}
          		fi
       		done
     	done
done
