#!/bin/bash

echo "The file we will trait is $1"

#path="/usr/share/man/fr/man1"

path_for_redis="/homes/dshi/3A/TP/Paralelle_Programming/redis-3.2.6/src"

zcat "$1"|  grep -o -E '\w+'|sed 'y/áàâäçéèêëîïìôöóùúüñÂÀÄÇÉÈÊËÎÏÔÖÙÜÑ/aaaaceeeeiiiooouuunAAACEEEEIIOOUUN/'|/homes/dshi/bin/bin/parallel Tohash.sh

#md5=$(echo -n "$line" | md5sum|awk '{print $1}')
#path_for_redis/redis-cli SET $md5 $line >/dev/null 2>&1 ;
 