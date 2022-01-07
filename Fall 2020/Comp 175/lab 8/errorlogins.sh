#! /bin/bash

read logLocation

echo Examining file $logLocation

echo File is compressed archive - decompressing first

echo Decompressing to $logLocation

#search for lines that contain an ip address

#search for lines with user in them(this is how we find log in attempts)
grep -i "user" file | -i "from"

#printing out what is before cyberlab
awk -F 'cyberlab' '{print $1}' | tr ',' '\n'

#some how print what user name it is
echo sed -e 's/user\(.*\)from/\1/'

#print the ip address
echo sed -e 's/from\(.*\)port/\1/'