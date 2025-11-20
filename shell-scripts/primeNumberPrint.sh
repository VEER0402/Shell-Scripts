#!/bin/bash
#
#
#print prime number in btwn 1 to 50
#
#

for i in {2..50}; do
    prime=1
    for ((j=2; j<=i/2; j++)); do
        if (( i % j == 0 )); then
            prime=0
            break
        fi
    done
    if (( prime == 1 )); then
        echo "$i"
    fi
done
