#!/bin/sh
set -e
wget https://github.com/afdesk/my-driverkit/releases/download/v0.5.3/driverkit_linux_x86_64.tar.gz
tar -xf driverkit_linux_x86_64.tar.gz
chmod +x driverkit
echo "kernelrelease:$1 output-probe: $2 path: $3"
./driverkit docker -c $3 --kernelrelease=$1 --output-probe=$2