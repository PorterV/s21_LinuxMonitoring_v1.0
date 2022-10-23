#!/bin/bash


if [ $# -ne 4 ]
then
    echo "Please write 4 parameters with 1 - 6 number"
else
    export par_1=$1
    export par_2=$2
    export par_3=$3
    export par_4=$4

    if [[ $1 -eq $2 || $3 -eq $4 ]]
    then echo "Foreground and background are not suppose to match. Please re-enter"
    else 
    chmod +x ./info.sh
    ./info.sh
    fi
fi