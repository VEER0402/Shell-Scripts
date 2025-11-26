#!/bin/bash
#this project is going to be creazy
#
#
#       THis is a script tp report the usage of AWS in Your Project.
#
#       Author : Veerendra Dwivedi
#       Date and Time : 26/11/2025. 17:56
#	Version : V1
#
#	AWS S3
#	AWS EC2
#	AWS LAMDA
#	AWS IAM USERS
#
#	LIST S# buckets

	aws s3 ls

#	List EC2 Instance

	aws ec2 describe-instances	

#	List AWS Lambda

	aws lamda list-functions

#	List AWS IAM Users
	
	aws iam list-users
