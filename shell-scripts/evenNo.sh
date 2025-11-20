#!/bin/bash
#print even no in rang btwn 1--50
#
#
 #for i in {1..50}; do
#	 if (i % 2 == 0);
#	 then
#		 echo "$i"
#	 fi
 #


for i in {1..50}; do
    if (( i % 2 == 0 )); then
        echo "$i"
    fi
done

