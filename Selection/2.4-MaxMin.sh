#!/bin/bash -x

a=$((RANDOM%10))
b=$((RANDOM%10))
c=$((RANDOM%10))

exp1=$(($a+$b*$c))
exp2=$(($a%$b+$c))
exp3=$(($a+$b/$c))
exp4=$(($a*$b+$c))

min=$exp1
max=$exp1

for((i=2; i<=4; i++))
do
	if(($((exp$i))>$max))
	then
		max=$((exp$i))
	fi
	if(($((exp$i))<$min))
	then
		min=$((exp$i))
	fi
done

echo "Max is : $max"
echo "Min is : $min"
