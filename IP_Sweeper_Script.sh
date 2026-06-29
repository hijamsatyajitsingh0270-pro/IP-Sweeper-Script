#!/bin/bash

# Loop through IPs 1-254 in the subnet 
for ip in {1..254}; do
    # Ping each IP once
    ping -c 1 $1.$ip | \
    grep "64 bytes" | \
    cut -d " " -f 4 | \
    tr -d ":" &
done

#wait for all background processes to finished
 wait