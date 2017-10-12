#!/bin/bash

   calcs[1]='100'
   calcs[2]='1000'
   calcs[3]='10000'
   calcs[4]='100000'
   calcs[5]='250000'
   #calcs[6]='20'
   calcs[6]='1000'
   calcs[7]='100'

   loops[1]='20'
   loops[2]='20'
   loops[3]='20'
   loops[4]='20'
   loops[5]='20'
   #loops[6]='500000'
   loops[6]='1000'
   loops[7]='100000'

echo -e "Threads,Calcs,Loops,Sleep,TotalArrayTime,AvgArrayTime,TotalCalcTime,AvgCalcTime,ElapsTime,SleepTime\n" > output.csv

for((q = 1; q<=8; q++))
do

for((i = 1; i<=13; i++))
do
   sleep=10
   thread=($i)

   echo --Running Test $q.$i
   output=`sudo ./calcs.sh "${calcs[q]}" "${loops[q]}" "$thread" "$sleep" >temp.txt`
   formatted= `./jsonPars.sh temp.txt >> output.csv`
   
   echo --Test Complete
   
done
done

echo totAvg=`./dataParse.sh output.csv >> output.csv`