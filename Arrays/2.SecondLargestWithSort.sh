#!/bin/bash -x

for((i=0;i<10;i++))
do
num[i]=$((RANDOM%900+100))
done

echo ${num[@]}

for((i=0;i<10;i++))
do
	for((j=0;j<10-i-1;j++))
	do
		if((${num[j]}>${num[$((j+1))]}))
		then
			temp=${num[j]}
			num[j]=${num[$((j+1))]}
			num[$((j+1))]=$temp
		fi
	done
done

echo ${num[@]}

echo "Max2 = ${num[1]}"

echo "Min2 = ${num[8]}"
