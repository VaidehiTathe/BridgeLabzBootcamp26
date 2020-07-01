#!/bin/bash -x
shopt -s extglob
echo "Enter Password"
read word
if [[ ${#word} -ge 8 && "$word" == *[A-Z]* && "$word" == *[@#%^+=]* && "$word" == *[a-z]*  && "$word" == *[0-9]* ]]
then 
	echo "Valid Password"
else 
	echo "Invalid Password"
fi
#!/bin/bash -x
#shopt -s extglob
#echo "Enter Password"
#read pass
#pat="([0-9a-zA-Z]{8,}([#@$?]{1,1}))"
#pat="^((?=.*[0-9])(?=.*?[A-Z])(?=.*?[#?!@$%^&*-]))$"
#if [[ $pass =~ $pat ]]
#then
#	echo "Yes"
#else
#	echo "No"
#fi

