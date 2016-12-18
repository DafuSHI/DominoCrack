#!/bin/bash
word=$(echo -n "$1")
hashcode=$(echo -n "$1"|md5sum|awk '{print $1}')
path_for_redis="/homes/dshi/3A/TP/Paralelle_Programming/redis-3.2.6/src"
#$path_for_redis/redis-cli SET $hashcode $word >/dev/null 2>&1 ;
echo $hashcode" "$word >> Allwords