#!/bin/bash
echo "installing mod configuration files..."
cd ./config && wget https://github.com/misaka12007/CreeperThaumaturge/releases/download/mods/config.tar
tar -xvf config.tar && rm config.tar && echo "mod configuration files installed."
cd ..