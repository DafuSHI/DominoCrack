#!/bin/bash

while IFS='' read -r line || [[ -n "$line" ]]; do
	hashcode=$(echo "$line" | awk '{print $1}')

	path_for_redis="/homes/dshi/3A/TP/Paralelle_Programming/redis-3.2.6/src"

	$path_for_redis/redis-cli GET $hashcode
	
done < "FinalResult"