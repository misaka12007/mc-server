#!/bin/bash
echo "installing mods..."
cd ./mods && wget https://github.com/misaka12007/CreeperThaumaturge/releases/download/mods/mods.tar
tar -xvf mods.tar && rm mods.tar && echo "modlist:" && ls -1 && echo "mods installed."
cd ..