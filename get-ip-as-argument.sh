#!/bin/bash

is_alive_ping()
{
	ping -c 1 $1 > /dev/null
	if [ $? -eq 0 ]
		then
  		echo node with address $i is up at `date +%Y-%m-%d--%H:%M`
	else
		echo $i is down at `date +%Y-%m-%d--%H:%M`
	fi
}


for i in $@
do
        is_alive_ping $i
done


exit
