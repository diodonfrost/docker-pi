#!/bin/bash

cd /data

java -Xmx"${MC_MEMORY}" -jar minecraft_server.jar nogui
