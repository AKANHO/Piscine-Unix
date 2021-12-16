#!/bin/bash

a=$(($1 +1))
b=$2
count=0


while  [[ $a -lt $b ]]; do

    if [[ $a -ge 10 ]] && [[ $a -le 99 ]]; then
	if [[ $a -eq 42 ]]; then 
	    count=$(($count +1))
	fi
	count=$(($count +1))
    fi
    a=$(($a +1))
    

done

echo $count

