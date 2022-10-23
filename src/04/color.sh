#!/bin/bash

# Color	Foreground	Background 
# Black	    30	40      6
# "\033[30m"   "\033[40m"
# Red	    31	41      2
# "\033[31m"  "\033[41m"
# Green	    32	42      3
# "\033[32m"  "\033[42m"
# Blue	    34	44      4
# "\033[34m"  "\033[44m"
# White	    97	107     1
# "\033[97m"  "\033[107m"
# Magenta	35	45      5
# "\033[35m"  "\033[45m"

export no_color="\033[0m"

background_val=$par_1 # Column 1 background 
foreground_val=$par_2 # Column 1 font color
background_res=$par_3 # Column 2 background
foreground_res=$par_4 # Column 2 font color


# CHOOSE COLOR

if [[ -z ${foreground_res} ]]
then 
export foreground_res="\033[34m"
foreground_res_color="Column 2 font color = default (blue)"
elif [[ foreground_res -eq 1 ]]
then
export foreground_res="\033[97m"
foreground_res_color="Column 2 font color = 1 (white)"
elif [[ foreground_res -eq 2 ]]
then
export foreground_res="\033[31m"
foreground_res_color="Column 2 font color = 2 (red)"
elif [[ foreground_res -eq 3 ]]
then
export foreground_res="\033[32m"
foreground_res_color="Column 2 font color = 3 (green)"
elif [[ foreground_res -eq 4 ]]
then
export foreground_res="\033[34m"
foreground_res_color="Column 2 font color = 4 (blue)"
elif [[ foreground_res -eq 5 ]]
then
export foreground_res="\033[35m"
foreground_res_color="Column 2 font color = 5 (purple)"
elif [[ foreground_res -eq 6 ]]
then
export foreground_res="\033[30m"
foreground_res_color="Column 2 font color = 6 (black)"
fi

if [[ -z ${background_val} ]]
then 
export background_val="\033[40m"
background_val_color="Column 1 background = default (black)"
elif [[ background_val -eq 1 ]]
then
export background_val="\033[107m"
background_val_color="Column 1 background = 1 (white)"
elif [[ background_val -eq 2 ]]
then
export background_val="\033[41m"
background_val_color="Column 1 background = 2 (red)"
elif [[ background_val -eq 3 ]]
then
export background_val="\033[42m"
background_val_color="Column 1 background = 3 (green)"
elif [[ background_val -eq 4 ]]
then
export background_val="\033[44m"
background_val_color="Column 1 background = 4 (blue)"
elif [[ background_val -eq 5 ]]
then
export background_val="\033[45m"
background_val_color="Column 1 background = 5 (purple)"
elif [[ background_val -eq 6 ]]
then
export background_val="\033[40m"
background_val_color="Column 1 background = 6 (black)"
fi

if [[ -z ${background_res} ]]
then 
export background_res="\033[41m"
background_res_color="Column 2 background = default (red)"
elif [[ background_res -eq 1 ]]
then
export background_res="\033[107m"
background_res_color="Column 2 background = 1 (white)"
elif [[ background_res -eq 2 ]]
then
export background_res="\033[41m"
background_res_color="Column 2 background = 2 (red)"
elif [[ background_res -eq 3 ]]
then
export background_res="\033[42m"
background_res_color="Column 2 background = 3 (greeb)"
elif [[ background_res -eq 4 ]]
then
export background_res="\033[44m"
background_res_color="Column 2 background = 4 (blue)"
elif [[ background_res -eq 5 ]]
then
export background_res="\033[45m"
background_res_color="Column 2 background = 5 (purple)"
elif [[ background_res -eq 6 ]]
then
export background_res="\033[40m"
background_res_color="Column 2 background = 6 (black)"
fi

if [[ -z ${foreground_val} ]]
then 
export foreground_val="\033[97m"
foreground_val_color="Column 1 font color = default (white)"
elif [[ foreground_val -eq 1 ]]
then
export foreground_val="\033[97m"
foreground_val_color="Column 1 font color = 1 (white)"
elif [[ foreground_val -eq 2 ]]
then
export foreground_val="\033[31m"
foreground_val_color="Column 1 font color = 2 (red)"
elif [[ foreground_val -eq 3 ]]
then
export foreground_val="\033[32m"
foreground_val_color="Column 1 font color = 3 (green)"
elif [[ foreground_val -eq 4 ]]
then
export foreground_val="\033[34m"
foreground_val_color="Column 1 font color = 4 (blue)"
elif [[ foreground_val -eq 5 ]]
then
export foreground_val="\033[35m"
foreground_val_color="Column 1 font color = 5 (purple)"
elif [[ foreground_val -eq 6 ]]
then
export foreground_val="\033[30m"
foreground_val_color="Column 1 font color = 6 (black)"
fi


# PRINT INFO

echo -e "${background_val}${foreground_val}HOSTNAME${no_color} = ${background_res}${foreground_res}$HOSTNAME${no_color}"
# echo "HOSTNAME = $HOSTNAME"

echo -e "${background_val}${foreground_val}TIMEZONE${no_color} = ${background_res}${foreground_res}$TIMEZONE${no_color}"
# echo "TIMEZONE = $TIMEZONE"

echo -e "${background_val}${foreground_val}USER${no_color} = ${background_res}${foreground_res}$USER${no_color}"
# echo "USER = $USER"

echo -e "${background_val}${foreground_val}OS${no_color} = ${background_res}${foreground_res}$OS${no_color}"
# echo "OS = $OS"

echo -e "${background_val}${foreground_val}DATE${no_color} = ${background_res}${foreground_res}$DATE${no_color}"
# echo "DATE = $DATE"

echo -e "${background_val}${foreground_val}UPTIME${no_color} = ${background_res}${foreground_res}$UPTIME${no_color}"
# echo "UPTIME = $UPTIME"

echo -e "${background_val}${foreground_val}UPTIME_SEC${no_color} = ${background_res}${foreground_res}$UPTIME_SEC${no_color}"
# echo "UPTIME_SEC = $UPTIME_SEC"

echo -e "${background_val}${foreground_val}IP${no_color} = ${background_res}${foreground_res}$IP${no_color}"
# echo "IP = $IP"

echo -e "${background_val}${foreground_val}MASK${no_color} = ${background_res}${foreground_res}$MASK${no_color}"
# echo "MASK = $MASK"

echo -e "${background_val}${foreground_val}GATEWAY${no_color} = ${background_res}${foreground_res}$GATEWAY${no_color}"
# echo "GATEWAY = $GATEWAY"

echo -e "${background_val}${foreground_val}RAM_TOTAL${no_color} = ${background_res}${foreground_res}$RAM_TOTAL${no_color}"
# echo "RAM_TOTAL = $RAM_TOTAL"

echo -e "${background_val}${foreground_val}RAM_USED${no_color} = ${background_res}${foreground_res}$RAM_USED${no_color}"
# echo "RAM_USED = $RAM_USED"

echo -e "${background_val}${foreground_val}RAM_FREE${no_color} = ${background_res}${foreground_res}$RAM_FREE${no_color}"
# echo "RAM_FREE = $RAM_FREE"

echo -e "${background_val}${foreground_val}SPACE_ROOT${no_color} = ${background_res}${foreground_res}$SPACE_ROOT${no_color}"
# echo "SPACE_ROOT = $SPACE_ROOT"

echo -e "${background_val}${foreground_val}SPACE_ROOT_USED${no_color} = ${background_res}${foreground_res}$SPACE_ROOT_USED${no_color}"
# echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"

echo -e "${background_val}${foreground_val}SPACE_ROOT_FREE${no_color} = ${background_res}${foreground_res}$SPACE_ROOT_FREE${no_color}"
# echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"

echo "$background_val_color"
echo "$foreground_val_color"
echo "$background_res_color"
echo "$foreground_res_color"