
read -p "Enter minimum range:" n
read -p "Enter maximum range:" m
flag=0
for((i=n; i<=m; i++))
do
	flag=0
	for(( j=2; j<=i/2; j++ ))
	do
		if [ $((i%j)) -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]
        then
               echo "Prime number are:" $i
        fi
done




