#!/bin/bash
echo 0 >/proc/sys/net/ipv4/icmp_echo_ignore_all
iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
iptables -A OUTPUT -p icmp --icmp-type echo-reply -j ACCEPT