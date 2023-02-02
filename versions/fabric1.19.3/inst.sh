#!/bin/bash
echo "installing java19..."
apt install gnupg ca-certificates curl
curl -s https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg
echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list
apt update
apt install zulu19-jdk
"/usr/lib/jvm/zulu19/bin/java" -version && echo "java19 installed."
echo "installing fabric server..."
wget https://meta.fabricmc.net/v2/versions/loader/1.19.3/0.14.13/0.11.1/server/jar -O server.jar && echo "fabric server installed."
echo "--- server [fabric1.19.3] installation finished ---"