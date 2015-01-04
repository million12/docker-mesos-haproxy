#!/bin/bash

set -e

cd /
sed -i 's/sudo//g' /haproxy-marathon-bridge
sed -i 's/127.0.0.1/'$MARATHON_ADDRESS'/g' /etc/haproxy-marathon-bridge/marathons
sed -i 's/8080/'$MARATHON_PORT'/g' /etc/haproxy-marathon-bridge/marathons
cd /
./haproxy-marathon-bridge install_cronjob