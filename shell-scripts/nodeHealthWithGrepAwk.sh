#!/bin/bash


###################################################################
#
#
#Author : Veerendra Dwivedi
#
#Date : 18-Nov-2025 : 07:11pm
#
#
#this scripts outhputs the node health
#
#	Version : V1
#
#
#
################################################################
#
 set -x
set -e #exit the script when there is an error
set -o #pipe fail	
df -h

free -g

nproc

ps -ef | grep system | awk -F" " '{print $3}'
