#!/bin/bash
clear

source "update-paths.conf"

zip_file="https://codeload.github.com/OccultismCat/L4D2-Configs/zip/refs/heads/main"

curl -o "L4D2-Configs-Updated.zip" "$zip_file"