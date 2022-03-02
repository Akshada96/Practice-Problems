#!/bin/bash -x

read -p "Enter the power: " n
ans=1

for((i=0; i<=$n; i++))
do
	ans=$((2**$i))
	echo "2^$i = $ans"
done
