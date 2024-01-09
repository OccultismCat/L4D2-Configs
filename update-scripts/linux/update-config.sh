#!/bin/bash
clear

source "update-paths.conf"

sudo cp -f "$REPO_CUSTOM_PATH"* "$GAME_CUSTOM_PATH"

echo -e "\nCopied Files From '$REPO_CUSTOM_PATH' to '$GAME_CUSTOM_PATH'\n"