#!/bin/bash

export start=$(date +%s%N)

if [[ $# -ne 1 ]]
then
    echo "n/a"
    exit
fi

if [[ -d $1 ]]
then
    chmod +x ./info.sh
    ./info.sh $1
else
    "Does not exist"
    exit
fi