#!/bin/bash -x

read -p "Enter a number: " x
isPrime=1

for((i=2; i<$x; i++))
do
	if (($(($x%$i)) == 0))
	then
	isPrime=0
	break
	fi
done

if (($isPrime == 1))
then
	echo "$x is a prime no"
else
	echo "$x is not a prime no"
fi
