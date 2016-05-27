#!/bin/bash
set regcount = 0
filename='permutations.txt'
filelines=`cat $filename`

for i in $filelines ; do 
        
	dotcheck=$( echo "$i" | grep "\." | wc -l)
        check=$(nslookup $i| grep "NXDOMAIN" | wc -l);
        if [[ $check -ne 0 && dotcheck -ne 0 ]];
        	then
 	                :
        else
		((regcount++));
	fi;
done
echo $regcount;
