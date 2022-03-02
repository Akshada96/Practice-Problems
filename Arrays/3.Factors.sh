#!/bin/bash

read -p "Enter a number : " num

temp=$num
counter=0

for (( i=2; i<=$num; i++ ))
do
	while [ $((num%$i)) == 0 ]
	do
	factors[((counter++))]=$i
#	echo $i
	num=$((num/$i))
	done
done

echo "Factors of $temp : ${factors[@]}"
