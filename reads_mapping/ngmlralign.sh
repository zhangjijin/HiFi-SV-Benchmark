#!/bin/bash
 
startTime=`date +%Y%m%d-%H:%M`
 
startTime_s=`date +%s`

ngmlr  -t 20 -r $1 -q $2 -o $3  2>$4

 
endTime=`date +%Y%m%d-%H:%M`
 
endTime_s=`date +%s`
 
sumTime=$[ $endTime_s - $startTime_s ]
 
echo "$startTime ---> $endTime" "Totl:$sumTime minutes"
