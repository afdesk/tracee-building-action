#!/bin/sh
set -e
wget https://github.com/afdesk/my-driverkit/releases/download/v0.5.3/driverkit_linux_x86_64.tar.gz
tar -xf driverkit_linux_x86_64.tar.gz
chmod +x driverkit
./driverkit docker -c ubuntu.yaml --kernelrelease=$1 --output-probe=$2