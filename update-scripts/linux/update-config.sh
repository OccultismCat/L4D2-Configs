#!/bin/bash
clear

source "update-paths.conf"

cp -f "$REPO_CUSTOM_PATH/"* "$GAME_CUSTOM_PATH"

cp -f "$REPO_AUTOEXEC_PATH" "$GAME_AUTOEXEC_PATH"

echo -e "\nCopied Files From '$REPO_CUSTOM_PATH' to '$GAME_CUSTOM_PATH'\n"