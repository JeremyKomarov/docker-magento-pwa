#!/bin/bash

envFile="./.env"

ip_address=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}')

if [ -z "$ip_address" ]; then
  echo "Error: Could not determine the IP address of the host machine."
  exit 1
fi
sed -i '' -E "s/IP_DISPATCH=.*/IP_DISPATCH=$ip_address/" "$envFile"

echo "IP address appended to IP_DISPATCH in .env file."