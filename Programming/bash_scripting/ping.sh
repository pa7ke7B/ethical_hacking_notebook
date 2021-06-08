#!/bin/bash
if [ "$1" == "" ]
then
echo "Usage: ./ping.sh [network]"
echo "Example: ./ping.sh 192.168.20"
else
for x in {1..254..1} 
do
ping -c 1 $1.$x | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
done
fi


