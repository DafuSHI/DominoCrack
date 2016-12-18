#!/bin/bash
hashcode=$(echo $1| cut -d " " -f1)
word=$(echo $1| cut -d " " -f2)
path_for_redis="/homes/dshi/3A/TP/Paralelle_Programming/redis-3.2.6/src"


result=$($path_for_redis/redis-cli EXISTS $hashcode $word)
	if [ $result -eq 0 ]
	then 
		$path_for_redis/redis-cli SET $hashcode $word >/dev/null 2>&1
	fi;