#!/bin/bash -x

one=0
two=0
three=0
four=0
five=0
six=0
count=0

while(($one!=10 && $two!=10 && $three !=10 && $four!=10 && $five!=10 && $six!=10))
do
	dice=$((RANDOM%6+1))
	diceRolls[((counter++))]=$dice
	case $dice in
		1 )
		((one++))
		;;
		2 )
		((two++))
		;;
		3 )
		((three++))
		;;
		4 )
		((four++))
		;;
		5 )
		((five++))
		;;
		6 )
		((six++))
		;;
	esac
done

winCount=($one $two $three $four $five $six)
echo ${winCount[@]}

max=${winCount[0]}
maxNo=1
min=${winCount[0]}
minNo=1

for((i=1;i<6;i++))
do
	if((${winCount[i]}>$max))
	then
		max=${winCount[i]}
		maxNo=$(($i+1))
	elif((${winCount[i]}<$min))
	then
		min=${winCount[i]}
		minNo=$(($i+1))
	fi
done

echo ${diceRolls[@]}
echo ${winCount[@]}
#echo "1:$one 2:$two 3:$three 4:$four 5:$five 6:$six"
echo "Max no is $maxNo occured $max times"
echo "Min no is $minNo occured $min times"
