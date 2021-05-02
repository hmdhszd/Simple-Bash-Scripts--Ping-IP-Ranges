#!/bin/bash

is_alive_ping()
{
	ping -c 1 $1 > /dev/null
	if [ $? -eq 0 ]
		then
  		echo node with address $i is up 
	else
		echo $i is down
	fi
}


for i in 192.168.118.{141..143}
do
is_alive_ping $i
done
exit
