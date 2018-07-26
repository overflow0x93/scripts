#!/bin/bash
tz=$(ls -la /etc/localtime | grep "\->" | sed 's/^.*\(zoneinfo.*\)/\1/g' | awk -F/ {'print $NF'})
utc=$(date +%z)
echo "TIMEZONE=$tz OFFSET=$utc UTC"
