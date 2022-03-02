#!/bin/bash -x

for((i=1; i<=5; i++))
do
	n$i=$((RANDOM%10));
done
