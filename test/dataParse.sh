#!/bin/bash

file=$1

#output=cat $file | cut -d, -f 9,10

total9=`cat $file | awk -F"," '{sum+=$9} {sum2+=$10}  END{print "=",sum,",",sum2,",Total=",sum/NR,",",sum2/NR,",","Avg"}'`

echo $total9 | sed 's/=/\n,,,,,,,,/g' 