#!/bin/bash -x

head=0
tail=1
headWins=0
tailWins=0
while(($headWins<11 && $tailWins<11))
do
	coin=$((RANDOM%2))
	case $coin in
		$head )
		((++headWins))
		;;
		$tail )
		((++tailWins))
		;;
	esac
done

echo "Head : $headWins Tail : $tailWins"

if(($tailWins>$headWins))
then
	echo "Tail won"
else
	echo "Head won"
fi
