#! /bin/bash

read logLocation

echo Examining file $logLocation

echo File is compressed archive - decompressing first

echo Decompressing to $logLocation

#sudo gzip -d $logLocation

#finds and prints 404, some how have to print what is between GET and HTTP
#zgrep -a 404 $logLocation | sort | uniq -c | sort -nr | sed -e 's/GET\(.*\)HTTP/\1/'