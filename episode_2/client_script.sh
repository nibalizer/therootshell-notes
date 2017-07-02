#!/bin/bash -eu

echo "/---------------------------------------"
echo "|  Printing Information on ${HOSTNAME}"
echo -e "|  Number of processors: " $(nproc)
echo -e "|  Kernel version: " $(uname -r)

if [ -e /etc/redhat-release ]; then
    echo "|  Detected Linux Flavor: RedHat"
fi

if [ -e /etc/debian_version ]; then
    echo "|  Detected Linux Flavor: Debian"
fi
echo "\---------------------------------------"


