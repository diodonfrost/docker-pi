#!/bin/bash

set -e

case "X$MINECRAFT_VERSION" in
  X|XLATEST|Xlatest)
    VANILLA_VERSION=$(curl -fsSL https://launchermeta.mojang.com/mc/game/version_manifest.json | jq -r '.latest.release')
  ;;
  *)
    VANILLA_VERSION=$MINECRAFT_VERSION
  ;;
esac

versionManifestUrl=$(curl -fsSL 'https://launchermeta.mojang.com/mc/game/version_manifest.json' | jq --arg VANILLA_VERSION "$VANILLA_VERSION" --raw-output '[.versions[]|select(.id == $VANILLA_VERSION)][0].url')

serverDownloadUrl=$(curl -fsSL "${versionManifestUrl}" | jq --raw-output '.downloads.server.url')

curl -fsSL -o /data/minecraft_server.jar "${serverDownloadUrl}"
echo "eula=true" > /data/eula.txt
