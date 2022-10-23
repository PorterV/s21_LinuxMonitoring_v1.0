#!/bin/bash

if [ $# -gt 0 ]
then 
    echo "n/a"
else 
    chmod +x ./info.sh
    ./info.sh
    echo "Do you want to save output?(y,n)"
    read input
    if [[ "$input" == "y" || "$input" == "Y" ]]
    then 
        file="$(date +"%d_%m_%y_%H_%M_%SS").status"
        ./info.sh > $file
    fi
fi