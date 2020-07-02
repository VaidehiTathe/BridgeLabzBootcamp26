H=1
T=0
countHead=0
countTail=0
total=30
read -p "Enter your choice:1.Singlet 2.Doublet 3.Triplet" choice
declare -A singletDict
declare -A doubletDict
declare -A tripletDict
function Singlet()
{

	for(( i=1; i<=30; i++ ))
	do
		coinCheck=$((RANDOM%2))
		if [[ $coinCheck -eq $H ]]
		then
			singletDict["$i"]="H"
			$((countHead++))
		else
			singletDict["$i"]="T"
			$((countTail++))
		fi
	done

	echo ${singletDict[@]}
	echo "Number of heads are:"$countHead
	echo "Number of tails are:"$countTail

	percentage_head=$(awk "BEGIN { pc=100*${countHead}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
	percentage_tail=$(awk "BEGIN { pc=100*${countTail}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")

	echo "Winning percenatge of head are:" $percentage_head
	echo "Winning percentage of tail are:" $percentage_tail
}

function Doublet()
{
	HH=1
	TT=0
	HT=2
	countHH=0
	countTT=0
	countHT=0

   for(( i=1; i<=30; i++ ))
   do
      coinCheck=$((RANDOM%3))
      if [[ $coinCheck -eq $HH ]]
      then
         doubletDict["$i"]="HH"
         $((countHH++))
      elif [[ $coinCheck -eq $TT ]]
		then
         doubletDict["$i"]="TT"
			$((countTT++))
		else
			doubletDict["$i"]="HT"
			$((countHT++))
      fi
   done

   echo ${doubletDict[@]}
   echo "Number of HH are:"$countHH
   echo "Number of TT are:"$countTT
   echo "Number of HT are:"$countHT

   percentage_HH=$(awk "BEGIN { pc=100*${countHH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_TT=$(awk "BEGIN { pc=100*${countTT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
	percentage_HT=$(awk "BEGIN { pc=100*${countHT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")


   echo "Winning percenatge of HH are:" $percentage_HH
   echo "Winning percentage of TT are:" $percentage_TT
	echo "Winning percentage of HT are:" $percentage_HT

}


function Triplet()
{
   HHH=0
  	HHT=1
	HTH=2
	THH=3
	TTH=4
	TTT=5
	THT=6
	HTT=7

	declare -A tripletDict
   for(( i=1; i<=30; i++ ))
   do
      coinCheck=$((RANDOM%8))
		case $coinCheck in
					0)	tripletDict["$i"]="HHH" 
						$((countHHH++))
								;;
					1)tripletDict["$i"]="HHT" 
						$((countHHT++))
								;;
					2)tripletDict["$i"]="HTH" 
						$((countHTH++))
								;;
					3)tripletDict["$i"]="THH" 
						$((countTHH++))
								;;
					4)tripletDict["$i"]="TTH" 
						$((countTTH++))
                        ;;
					5)tripletDict["$i"]="TTT" 
						$((countTTT++))
                        ;;
				 	6)tripletDict["$i"]="THT" 
						$((countTHT++))
                        ;;
 					7)tripletDict["$i"]="HTT" 
						$((countHTT++))
                        ;;
		esac
   done
   echo ${tripletDict[@]}

   percentage_HHH=$(awk "BEGIN { pc=100*${countHHH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_HHT=$(awk "BEGIN { pc=100*${countHHT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_HTH=$(awk "BEGIN { pc=100*${countHTH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
	percentage_THH=$(awk "BEGIN { pc=100*${countTHH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_TTH=$(awk "BEGIN { pc=100*${countTTH}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_TTT=$(awk "BEGIN { pc=100*${countTTT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_THT=$(awk "BEGIN { pc=100*${countTHT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
   percentage_HTT=$(awk "BEGIN { pc=100*${countHTT}/${total}; i=int(pc); print (pc-i<0.5)?i:i+1 }")


   echo "Winning percenatge of HHH are:" $percentage_HHH
   echo "Winning percentage of HHT are:" $percentage_HHT
   echo "Winning percentage of HTH are:" $percentage_HTH
	echo "Winning percentage of THH are:" $percentage_THH
 	echo "Winning percentage of TTH are:" $percentage_TTH
 	echo "Winning percentage of TTT are:" $percentage_TTT
 	echo "Winning percentage of THT are:" $percentage_THT
 	echo "Winning percentage of HTT are:" $percentage_HTT

}

case $choice in
	1)
		Singlet
			;;
	2)	
		Doublet
		;;
	3)
		Triplet
		;;
esac

