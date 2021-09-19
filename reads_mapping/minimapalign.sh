#!/bin/bash
 
startTime=`date +%Y%m%d-%H:%M`
 
startTime_s=`date +%s`

minimap2 --MD -ax asm20 -t 20 $1  $2 -o $3  -R '@RG\tID:myid\tSM:mysample' 2>$4

 
endTime=`date +%Y%m%d-%H:%M`
 
endTime_s=`date +%s`
 
sumTime=$[ $endTime_s - $startTime_s ]
 
echo "$startTime ---> $endTime" "Totl:$sumTime minutes"
