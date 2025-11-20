#!/bin/bash
#
#print odd numbers
#
#
 for i in {1..29}; do
	 if (( i % 3 == 0 ))
	 then
		 echo "$i"
	 fi
 done

