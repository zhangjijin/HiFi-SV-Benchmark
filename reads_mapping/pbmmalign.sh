#!/bin/bash
 
startTime=`date +%Y%m%d-%H:%M`
 
startTime_s=`date +%s`


pbmm2 align $1 $2 $3 --preset CCS --sort --rg '@RG\tID:myid\tSM:mysample'  -j 20 2>$4

 
endTime=`date +%Y%m%d-%H:%M`
 
endTime_s=`date +%s`
 
sumTime=$[ $endTime_s - $startTime_s ]
 
echo "$startTime ---> $endTime" "Totl:$sumTime minutes"
