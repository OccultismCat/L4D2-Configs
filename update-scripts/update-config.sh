#!/bin/bash
clear

source "update-paths.conf"

sudo cp -f "$START_PATH"* "$END_PATH"

echo -e "\nCopied Files From '$START_PATH' to '$END_PATH'\n"