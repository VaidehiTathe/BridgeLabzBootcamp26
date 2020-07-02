countOne=0
countTwo=0
countThree=0
countFour=0
countFive=0
countSix=0

declare -A dieDict
for(( i=1; i<=50; i++ ))
do
	dieCheck=$((RANDOM%6+1))
	echo $dieCheck
	dieDict["$i"]=$dieCheck
	if [[ ${dieDict["$i"]} -eq 1 ]]
	then
		$((countOne++))
		if [[ countOne -eq 10 ]]
		then
			echo "One occurs 10 time"
			exit
		fi
	elif [[ ${dieDict["$i"]} -eq 2 ]]
	then
		$((countTwo++))
		if [[ countTwo -eq 10 ]]
                then
                        echo "Two occurs 10 time"
                        exit
                fi

	elif [[ ${dieDict["$i"]} -eq 3 ]]
        then
                $((countThree++))
		if [[ countThree -eq 10 ]]
                then
                        echo "Three occurs 10 time"
                        exit
                fi

	elif [[ ${dieDict["$i"]} -eq 4 ]]
        then
                $((countFour++))
		if [[ countFour -eq 10 ]]
                then
                        echo "Four occurs 10 time"
                        exit
                fi

	elif [[ ${dieDict["$i"]} -eq 5 ]]
        then
                $((countFive++))
		if [[ countFive -eq 10 ]]
                then
                        echo "Five occurs 10 time"
                        exit
                fi

	elif [[ ${dieDict["$i"]} -eq 6 ]]
        then
                $((countSix++))
		if [[ countSix -eq 10 ]]
                then
                        echo "Six occurs 10 time"
                        exit
                fi

	else
		echo "Invalid"
	fi
done

