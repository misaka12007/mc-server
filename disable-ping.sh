#!/bin/bash
echo 1 >/proc/sys/net/ipv4/icmp_echo_ignore_all
iptables -A INPUT -p icmp --icmp-type 8 -s 0/0 -j DROP