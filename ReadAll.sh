#!/bin/bash
# $1 is the file with all the names of the file that will be traited

echo "#################The list file is stored in $1###############"
echo "#                                                           #" 
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#############################################################"

#while IFS='' read -r line || [[ -n "$line" ]]; do
#	Treater.sh "$line" >> Allwords
#done < "$1"


#cat $1 | /homes/dshi/bin/bin/parallel Treater.sh  >> Allwords
cat $1 | /homes/dshi/bin/bin/parallel Treater_NoTmp_Parallel.sh 

echo "#################Step 2,uniq all the words###################"
echo "#                                                           #" 
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#############################################################"
cat Allwords | sort | uniq > AfterAllWords


echo "#################Step 3,put into redis ######################"
echo "#                                                           #" 
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#                                                           #"
echo "#############################################################"
cat AfterAllWords|/homes/dshi/bin/bin/parallel ./putInRedis.sh 



#cat AfterAllWords| /homes/dshi/bin/bin/parallel md5sum >> AfterHash

