#!/bin/bash

# Clean sysctl config directories
rm -rf /usr/lib/sysctl.d/* /run/sysctl.d/* /etc/sysctl.d/*

sed -i "/net.ipv4.conf.all.rp_filter/d" /etc/sysctl.conf
echo "net.ipv4.conf.all.rp_filter = 0" >> /etc/sysctl.conf
# Setting correct runtime value
sysctl -w net.ipv4.conf.all.rp_filter=1