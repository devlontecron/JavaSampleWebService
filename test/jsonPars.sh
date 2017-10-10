#!/bin/bash

file=$1

#output=`cat $file | tr -d '{ [ } ]' | tr "," "," | tr ':' ',' | tr -d '"' -f3`
output=`cat $file | sed 's/[^0-9,]*//g'`

echo $output

#cat help.txt | cut -d , -f7 | cut -d \" -f01