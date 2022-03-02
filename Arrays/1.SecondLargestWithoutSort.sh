#!/bin/bash -x

for((i=0;i<10;i++))
do
num[i]=$((RANDOM%900+100))
done

echo ${num[@]}

max1=${num[0]}
max2=${num[0]}

for((i=1;i<10;i++))
do
	if((${num[i]}<$max1 && ${num[i]}>$max2))
	then
		max2=${num[i]}
	elif((${num[i]}>$max1))
	then
		max2=$max1
		max1=${num[i]}
	fi
done

min1=${num[0]}
min2=$max1

for((i=1;i<10;i++))
do
	if((${num[i]}>$min1 && ${num[i]}<$min2))
	then
		min2=${num[i]}
	elif((${num[i]}<$min1))
	then
		min2=$min1
		min1=${num[i]}
	fi
done

echo "Max2 = $max2"

echo "Min2 = $min2"
