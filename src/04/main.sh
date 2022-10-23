#!/bin/bash


if [ $# -ne 0 ]
then
    echo "Please do not write any parametrs, chamge them in *.txt file"
else
    source color.txt

    export par_1=$column1_background
    export par_2=$column1_font_color
    export par_3=$column2_background
    export par_4=$column2_font_color

    chmod +x ./info.sh
    ./info.sh
fi