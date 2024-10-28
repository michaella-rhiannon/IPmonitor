#!/bin/bash

ip=""  # Target IP address to monitor

# Color codes
GREEN='\033[0;32m'  # Green color for reachable
RED='\033[0;31m'    # Red color for unreachable
NC='\033[0m'        # Reset color

while true; do
    # Ping the IP address and suppress output
    if ping -c 1 "$ip" &> /dev/null; then
        echo -e "${GREEN}$ip is reachable${NC}"  # Print in green if reachable
    else
        echo -e "${RED}$ip is unreachable${NC}"  # Print in red if unreachable
    fi
    sleep 5  # Wait for 5 seconds before the next check
done

