#!/bin/bash

export HOSTNAME=$HOSTNAME
export TIMEZONE="$(timedatectl | grep Time | awk '{print $3 " " $4$5}')"
export USER=$USER
export OS="$(cat /etc/issue | awk '{print $1 $2}')"
export DATE="$(date +"%d %B %Y %T")"
export UPTIME="$(uptime -p)"
export UPTIME_SEC="$(cat /proc/uptime | awk '{print $2}')"
export IP="$(hostname -i | awk '{print $1}')"
export MASK="$(netstat -rn | awk 'FNR == 5 {print $3}')"
export GATEWAY="$(netstat -rn | awk 'FNR == 3 {print $2}')"
export RAM_TOTAL="$(cat /proc/meminfo | grep MemTotal | awk '{printf "%.3f GB\n", $2/1024/1024}')"
export RAM_USED="$(free | awk 'FNR == 2 {printf "%.3f GB\n", $3/1024/1024}')"
export RAM_FREE="$(cat /proc/meminfo | grep MemFree | awk '{printf "%.3f GB\n", $2/1024/1024}')"
export SPACE_ROOT="$(df /root/ | awk 'FNR == 2 {printf "%.3f MB\n", $2/1024}')"
export SPACE_ROOT_USED="$(df /root/ | awk 'FNR == 2 {printf "%.3f MB\n", $3/1024}')"
export SPACE_ROOT_FREE="$(df /root/ | awk 'FNR == 2 {printf "%.3f MB\n", $4/1024}')"

chmod +x ./color.sh
./color.sh
