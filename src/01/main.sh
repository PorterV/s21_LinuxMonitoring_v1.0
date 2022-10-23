#!/bin/bash

if [ $# -ne 1 ]
then
	echo "n/a"
else
	if [[ $1 =~ [0-9] ]]
	then 
		echo "n/a"
	else 
		echo $1
	fi
fi
