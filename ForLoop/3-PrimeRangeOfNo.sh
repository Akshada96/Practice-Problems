#!/bin/bash -x

read -p "How many numbers to enter : " x

for((i=1; i<=$x; i++))
do
	read -p "Enter num$i : " num$i
done

for((j=1; j<=$x; j++))
do
	isPrime=1
	for((k=2; k<$((num$j)); k++))
	do
		if (($(($((num$j))%$k)) == 0))
		then
		isPrime=0
		break
		fi
	done

	if (($isPrime == 1))
	then
		echo "$((num$j)) is a prime no"
	else
		echo "$((num$j)) is not a prime no"
	fi
done
