#!/bin/bash


###################################################################
#
#
#Author : Veerendra Dwivedi
#
#Date : 18-Nov-2025 : 07:19pm
#
#
#this scripts outhputs the node health
#
#       Version : V2
#
#
#
################################################################
#

echo "print the disc space"

df -h

echo "print the memory uses"

free -g
 echo "print the no of processor"

nproc
