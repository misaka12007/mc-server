#!/bin/bash
iptables -I INPUT -p tcp -dport 25565 -j ACCEPT
iptables -I OUTPUT -p tcp -dport 25565 -j ACCEPT
java -Xmx2G -jar server.jar nogui