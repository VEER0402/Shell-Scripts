#!/bin/bash
#
#print numbers divided by 3 and 5 but not by 15 in 1----100 range
#
#
#Author : Veerendra Dwivedi
#
#Date : 20-Nov-2025 : 07:23pm
#
#
#this scripts outhputs the node health
#
#       Version : V1
#
#
 for i in {1..100}; do
    if (( (i % 3 == 0 || i % 5 == 0) && (i % 15 != 0) )); then
        echo "$i"
    fi
done
