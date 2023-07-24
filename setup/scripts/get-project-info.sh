#!/bin/bash

envFile="./.env"

full_node_version=$(node -p "require('./app/package.json').engines.node")

node_version=$(echo "$full_node_version" | sed -E 's/^>=//g')
node_version=${node_version%.x}

ip_address=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}')

sed -i '' -E "s/NODE_VER=.*/NODE_VER=$node_version/" "$envFile"
sed -i '' -E "s/IP_DISPATCH=.*/IP_DISPATCH=$ip_address/" "$envFile"

echo "Node version is $node_version"
echo "IP address is $ip_address"