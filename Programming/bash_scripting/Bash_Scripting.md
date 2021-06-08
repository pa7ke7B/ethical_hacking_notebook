# Bash Scripting


## ping.sh

Script used to do a ping sweep of a network. 

``` bash
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
```

Line 1: used to specify the bash interpreter
Echo prints to the screen

Script executes if the user adds in an argumnet that contains the first three octets of an ip address. If the user does not then it will echo to the screen instructions.

Once properly executed the script uses a for loop to increment from 1 to 254 and performs a ping on all IP address and uses data manipulation to only print out the IP addresses of successful pings.