#!/bin/bash -xx

head=0
tail=1
coin=$((RANDOM%2))

if [ $head -eq $coin ]
then
	echo "Heads"
else
	echo "Tails"
fi
