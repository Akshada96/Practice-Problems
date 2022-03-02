#!/bin/bash -x

arr=(0 -1 2 -3 1)
echo ${arr[@]}

count=0
#echo ${arr[count]}



for((i=0;i<3;i++))
do
	for((j=$(($i+1));j<4;j++))
	do
		for((k=$(($j+1));k<5;k++))
		do
	               	if(($((${arr[i]}+${arr[j]}+${arr[k]})) == 0))
			then
				arr1[count++]="("
				arr1[count++]=${arr[i]}
				arr1[count++]=${arr[j]}
				arr1[count++]=${arr[k]}
				arr1[count++]=")"
			fi
		done
	done
done

echo ${arr1[@]}
