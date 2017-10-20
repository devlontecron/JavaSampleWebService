#!/bin/bash

file=$1

#output=cat $file | cut -d, -f 9,10

redact=`tail -n+3 $file`

avgArr=`$redact | awk -F"," '{avgArrSum+=$6} END{print avgArrSum/(NR)'`
avgCalc=`$redact | awk -F"," '{avgCalcSum+=$8} END{print avgCalcSum/(NR)'`
avgElaps=`$redact | awk -F"," '{avgElapSum+=$9} END{print avgElapSum/(NR)'`
avgSleep=`$redact | awk -F"," '{avgSleepSum+=$10} END{print avgSleepSum/(NR)'`

echo -e '\n',,,,,$avgArr,,$avgCalc,$avgElaps,$avgSleep
 