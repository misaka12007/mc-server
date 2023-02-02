#!/bin/bash
echo "installing mods..."
cd ./mods
wget https://github.com/misaka12007/CreeperThaumaturge/releases/download/mods/mods.tar
tar -xvf mods.tar && rm mods.tar && echo "modlist:" && ls -1 && echo "mods installed."
echo "synchronizing mod config..."
cd ../config
wget https://github.com/misaka12007/CreeperThaumaturge/releases/download/mods/config.tar
tar -xvf config.tar && rm config.tar && echo "config synchronized."
echo "--- mod installation finished ---"