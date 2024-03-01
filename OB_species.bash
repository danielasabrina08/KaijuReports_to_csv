#!/bin/bash
#source ./generate_csv.bash

directory="kaiju_summaries"

for i in "$directory"/*;
do	
	if [ -f $i ]; then 
		if grep -q 'species' "$i"; then
			echo "$cnt" "$i"
			./generate_csv.bash "$i"			
		fi
	fi
	#echo $i
done



