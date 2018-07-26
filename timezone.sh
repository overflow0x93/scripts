#!/bin/bash
tz=$(ls -la /etc/localtime | grep "\->" | awk -F/ {'print $NF'})
utc=$(date +%z)
echo "ZONEINFO=$tz OFFSET=$utc UTC"
