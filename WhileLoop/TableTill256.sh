#!/bin/bash -x

read -p "Enter the power: " n
ans=1
i=1

while(($i<=$n && $ans<256))
do
        ans=$(($ans*2))
        echo "2^$i = $ans"
	((i++))
done
