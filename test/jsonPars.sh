#!/bin/bash

file=$1

output=`cat $file | tr -d '{ [ } ]' | tr "," "\n" | tr ':' ','`
echo $output
