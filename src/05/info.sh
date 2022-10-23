#!/bin/bash

export total_number_of_folder="$(ls -l $1 | grep -c ^d)"
export total_number_of_files="$(ls -laR $1 | grep "^-" | wc | awk '{print $1}')"
export config_files="$(find $1 -type f -name "*.conf" | wc -l)"
export text_files="$(find $1 -type f -name "*.txt" | wc -l)"
export exe_files="$(find $1 -type f -name -executable | wc -l)"
export log_files="$(find $1 -type f -name "*.log" | wc -l)"
export archive_files="$(find $1 -type f -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" | wc -l)"
export symb_link="$(find $1 -type l | wc -l)"

echo "Total number of folders (including all nested ones) = $total_number_of_folder"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"

for (( i=1; i<=5; i++ ))
do
    top_5_path="$(du -h $1 | sort -hr | head -$i | tail +$i | awk '{print $2}')"
    top_5_size="$(du -h $1| sort -hr | head -$i | tail +$i | awk '{print $1}')"
    echo "$i - ${top_5_path}, ${top_5_size}"

done

echo "Total number of files = $total_number_of_files"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $config_files"
echo "Text files = $text_files"
echo "Executable files = $exe_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $archive_files"
echo "Symbolic links = $symb_link"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"

for (( j=1; j<=10; j++ ))
do
    top_10_path="$(find $1 -type f -exec du -h {} + | sort -hr | head -$j | tail +$j |  awk '{print $2}')"
    top_10_size="$(find $1 -type f -exec du -h {} + | sort -hr | head -$j | tail +$j  | awk '{print $1}')"
    type="${top_10_path##*.}"
    echo "$j - ${top_10_path}, ${top_10_size}, ${type}"

done


echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"

for (( l=1; l<=10; l++ ))
do
    top_10_e_path="$(find $1 -type f -executable -exec du -h {} + | sort -hr | head -$l | tail +$l | awk '{print $2}')"
    top_10_e_size="$(find $1 -type f -executable -exec du -h {} + | sort -hr | head -$l | tail +$l | awk '{print $1}')"
    hash="$(sha1sum ${top_10_e_path} | awk '{print $1}')"
    echo "$l - ${top_10_e_path}, ${top_10_e_size}, ${hash}"

done

end=$(date +%s%N)
runtime=$((($end - $start) / 100000000))
printf "Script runtime is 0.%d in nanoseconds\n", $runtime