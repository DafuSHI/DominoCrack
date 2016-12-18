#!/bin/bash

echo "The file we will trait is $1"

#path="/usr/share/man/fr/man1"

path_for_redis="/homes/dshi/3A/TP/Paralelle_Programming/redis-3.2.6/src"


zcat "$1" | grep -o -E '\w+' | sed 'y/áàâäçéèêëîïìôöóùúüñÂÀÄÇÉÈÊËÎÏÔÖÙÜÑ/aaaaceeeeiiiooouuunAAACEEEEIIOOUUN/'> tmp 



while IFS='' read -r line || [[ -n "$line" ]]; do

	md5=$(echo -n "$line" | md5sum|awk '{print $1}')
	#result=$($path_for_redis/redis-cli EXISTS $md5 $line)
	#if [ $result -eq 0 ]
	#then 
	$path_for_redis/redis-cli SET $md5 $line >/dev/null 2>&1
	#fi;
    #echo -e "$md5 $line" >> Allwords
    #echo "$line"
done < "tmp"






		
