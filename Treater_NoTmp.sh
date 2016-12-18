#!/bin/bash

echo "The file we will trait is $1"

#path="/usr/share/man/fr/man1"

path_for_redis="/homes/dshi/3A/TP/Paralelle_Programming/redis-3.2.6/src"

for line in $(zcat "$1"|  grep -o -E '\w+'|sed 'y/áàâäçéèêëîïìôöóùúüñÂÀÄÇÉÈÊËÎÏÔÖÙÜÑ/aaaaceeeeiiiooouuunAAACEEEEIIOOUUN/'); do 

#md5=$(echo -n "$line" | md5sum|awk '{print $1}')

#path_for_redis/redis-cli SET $md5 $line >/dev/null 2>&1 ;
Tohash.sh $line
done  
