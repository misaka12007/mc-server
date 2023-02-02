#!/bin/bash
apt install gnupg ca-certificates curl
curl -s https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg
echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list
apt update
apt install zulu8-jdk
"/usr/lib/jvm/zulu8/bin/java" -version
echo "installed."