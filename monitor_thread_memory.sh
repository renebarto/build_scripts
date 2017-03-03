#!/bin/bash
COUNTER=0
while [  $COUNTER -lt 1000 ]; do
	awk '/Rss/ {total+=$2} END {print total/1024}' /proc/$1/smaps
	sleep 10
	let COUNTER=COUNTER+1 
done
         
