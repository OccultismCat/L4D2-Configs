#!/bin/bash
clear

source "./update-paths.conf"

copy_files(){
    local start_path="$1"
    local end_path="$2"
    copy=$(cp -f "$start_path" "$end_path" 2>&1)
    echo -e "Ran Copy Files: '$start_path' to '$end_path'\n"
}

copy_files "$REPO_CUSTOM_PATH/*" "$GAME_CUSTOM_PATH"

copy_files "$REPO_AUTOEXEC_PATH" "$GAME_AUTOEXEC_PATH"