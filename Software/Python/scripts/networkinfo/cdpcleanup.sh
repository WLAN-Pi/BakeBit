#!/bin/bash
# Cleans networkinfo cache text files 

DIRECTORY="/home/wlanpi/NanoHatOLED/BakeBit/Software/Python/scripts/networkinfo"
CAPTUREFILE="/tmp/cdpneightcpdump.cap"
OUTPUTFILE="/tmp/cdpneigh.txt"

#Clean up LLDP cache files
logger "networkinfo script: cleaning CDP neighbour cache files"
echo "No neighbour" > "$OUTPUTFILE"
#Tell me if eth0 is down 
sudo /sbin/ethtool eth0 | grep -q "Link detected: no" && echo "eth0 is down" > "$OUTPUTFILE"

#Remove capture file
sudo rm -f "$CAPTUREFILE"

exit 0