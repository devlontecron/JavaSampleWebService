#!/bin/bash
calcs=$1
loops=$2


for((i = 1; i<=10; i++))
do
   calcs=$1
   loops=$2
   sleep=0
   thread=($i)

   echo --Running Test $i
   sudo ./calcs.sh "$calcs" "$loops" "$thread" "$sleep" > results/Ubuntu_C4.Large_C${calcs}_L${loops}_T${thread}.csv
   echo --Test Complete
   
done

