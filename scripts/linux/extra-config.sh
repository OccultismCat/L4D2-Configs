#!/bin/bash
clear

arg1=$1

source "./update-paths.conf"

font_file="${GAME_FOLDER_PATH}/resource/stubble-bold.vfont"

ak_sound_file="${GAME_WEAPON_SOUNDS_PATH}rifle_ak47/gunfire/rifle_fire_1.wav"
m16_sound_file="${GAME_WEAPON_SOUNDS_PATH}rifle/gunfire/rifle_fire_1.wav"
sfx_scar="${GAME_WEAPON_SOUNDS_PATH}rifle_desert/gunfire/rifle_fire_1.wav"
ssg_sound_file="${GAME_WEAPON_SOUNDS_PATH}sg552/gunfire/sg552-1.wav"

military_sniper_sound_file="${GAME_WEAPON_SOUNDS_PATH}sniper_military/gunfire/sniper_military_fire_1.wav"
hunting_rifle_sound_file="${GAME_WEAPON_SOUNDS_PATH}hunting_rifle/gunfire/hunting_rifle_fire_1.wav"

sfx_deagle="${GAME_WEAPON_SOUNDS_PATH}magnum/gunfire/magnum_shoot.wav"
sfx_pistol="${GAME_WEAPON_SOUNDS_PATH}pistol/gunfire/pistol_fire.wav"
sfx_dual_pistol="${GAME_WEAPON_SOUNDS_PATH}pistol/gunfire/pistol_dual_fire.wav"

sfx_smg="${GAME_WEAPON_SOUNDS_PATH}smg/gunfire/smg_fire_1.wav"
sfx_silenced_smg="${GAME_WEAPON_SOUNDS_PATH}smg_silenced/gunfire/smg_fire_1.wav"
sfx_mp5="${GAME_WEAPON_SOUNDS_PATH}mp5navy/gunfire/mp5-1.wav"

sfx_chrome_shotgun="${GAME_WEAPON_SOUNDS_PATH}shotgun_chrome/gunfire/shotgun_fire_1.wav"
sfx_pump_shotgun="${GAME_WEAPON_SOUNDS_PATH}shotgun/gunfire/shotgun_fire_1.wav"
sfx_auto_shotgun="${GAME_WEAPON_SOUNDS_PATH}auto_shotgun/gunfire/auto_shotgun_fire_1.wav"
sfx_spas="${GAME_WEAPON_SOUNDS_PATH}auto_shotgun_spas/gunfire/shotgun_fire_1.wav"

sfx_minigun="${GAME_WEAPON_SOUNDS_PATH}minigun/gunfire/minigun_fire.wav"
sfx_m60="${GAME_WEAPON_SOUNDS_PATH}machinegun_m60/gunfire/machinegun_fire_1.wav"

sfx_nearmiss_1="${GAME_WEAPON_SOUNDS_PATH}/fx/nearmiss/bulletltor08.wav"
sfx_nearmiss_2="${GAME_WEAPON_SOUNDS_PATH}/fx/nearmiss/bulletltor10.wav"
sfx_nearmiss_3="${GAME_WEAPON_SOUNDS_PATH}/fx/nearmiss/bulletltor11.wav"
sfx_nearmiss_4="${GAME_WEAPON_SOUNDS_PATH}/fx/nearmiss/bulletltor13.wav"
sfx_nearmiss_5="${GAME_WEAPON_SOUNDS_PATH}/fx/nearmiss/bulletltor14.wav"

sfx_alarm="${GAME_SOUNDS_PATH}/ambient/alarms/alarm1.wav"
sfx_alarm_2="${GAME_SOUNDS_PATH}/ambient/alarms/perimeter_alarm.wav"
sfx_church_bell="${GAME_SOUNDS_PATH}/plats/churchbell_begin_loop.wav"


## PATHS ##
sfx_ambient_sounds="${GAME_SOUNDS_PATH}/ambient/"
sfx_ambience_sounds="${sfx_ambient_sounds}ambience/"
sfx_ambience_water_sounds="{$sfx_ambient_sounds}water/"
sfx_random_ambience_sounds="${sfx_ambient_sounds}random_amb_sounds/"
sfx_random_ambience_sfx_sounds="${sfx_ambient_sounds}random_amb_sfx/"
sfx_swamp_ambience_sounds="${sfx_ambient_sounds}swamps/"
sfx_atmosphere_sounds="${sfx_ambient_sounds}atmosphere/"
sfx_urban_ambience_sounds="${GAME_SOUNDS_PATH}/ambient/random_amb_sfx/urban_1b-5b_randommetal_interior/"
sfx_player_footsteps_run="${GAME_SOUNDS_PATH}/player/footsteps/survivor/run"
sfx_player_footsteps_walk="${GAME_SOUNDS_PATH}/player/footsteps/survivor/walk"

## SFX SOUNDS
sfx_crucial_town_ambience="${GAME_SOUNDS_PATH}/ambient/atmosphere/crucial_town_ambience.wav"
sfx_crucial_bigwarehouseamb="${GAME_SOUNDS_PATH}/ambient/ambience/crucial_bigwarehouseamb_loop.wav"
sfx_crucial_drainage_waterlaps="${sfx_ambience_sounds}crucial_drainage_waterlaps_loop.wav"
sfx_pole_rattle="${GAME_SOUNDS_PATH}/ambient/random_amb_sfx/pole_rattle01.wav"
sfx_pole_rattle_2="${GAME_SOUNDS_PATH}/ambient/random_amb_sfx/pole_rattle02.wav"
sfx_npc_burn="${GAME_SOUNDS_PATH}/npc/headcrab/headcrab_burning_loop2.wav"
sfx_fire_loop="${GAME_SOUNDS_PATH}/weapons/molotov/fire_loop_1.wav"
sfx_sewer_air="${sfx_atmosphere_sounds}sewer_air1.wav"

find_files() {
    IFS=$'\n'
    local files=($(find "$1" -type f -name "$2"))
    for file in "${files[@]}"; do
        echo $file
    done
}
delete_file() {
    IFS=$'\n'
    local delete_file="$1"
    if [ -e "$delete_file" ]; then
        rm "$delete_file"
        echo -e "[$(basename "$delete_file")] deleted successfully."
    #else
        #echo -e "'[$(basename "$delete_file")]' not found."
    fi
}
delete_files() {
    IFS=$'\n'
    local files=("$@")
    for file in "${files[@]}"; do
        delete_file "$file"
    done
}
weapons() {
    IFS=$'\n'
    delete_file "$ak_sound_file"
    delete_file "$m16_sound_file"
    delete_file "$sfx_scar"
    delete_file "$military_sniper_sound_file"
    delete_file "$hunting_rifle_sound_file"
    delete_file "$ssg_sound_file"
    delete_file "$sfx_deagle"
    delete_file "$sfx_pistol"
    delete_file "$sfx_dual_pistol"
    delete_file "$sfx_smg"
    delete_file "$sfx_silenced_smg"
    delete_file "$sfx_mp5"
    delete_file "$sfx_pump_shotgun"
    delete_file "$sfx_chrome_shotgun"
    delete_file "$sfx_auto_shotgun"
    delete_file "$sfx_spas"
    delete_file "$sfx_minigun"
    delete_file "$sfx_m60"
    delete_file "$sfx_nearmiss_1"
    delete_file "$sfx_nearmiss_2"
    delete_file "$sfx_nearmiss_3"
    delete_file "$sfx_nearmiss_4"
    delete_file "$sfx_nearmiss_5"
}
footsteps() {
    IFS=$'\n'
    local files=$(find_files "$sfx_player_footsteps_run" "*.wav")
    for file in $files; do
        delete_file "$file"
    done
    local files=$(find_files "$sfx_player_footsteps_walk" "*.wav")
    for file in $files; do
        delete_file "$file"
    done
}
ambience() {
    IFS=$'\n'
    delete_file "$sfx_pole_rattle"
    delete_file "$sfx_pole_rattle_2"
    delete_file "$sfx_crucial_town_ambience"
    delete_file "$sfx_crucial_bigwarehouseamb"
    delete_file "$sfx_npc_burn"
    delete_file "$sfx_fire_loop"
    delete_file "$sfx_sewer_air"
    delete_file "$sfx_crucial_drainage_waterlaps"
    delete_files $(find_files "$sfx_urban_ambience_sounds" "*.wav")
    delete_files $(find_files "$sfx_swamp_ambience_sounds" "*.wav")
    delete_files $(find_files "$sfx_atmosphere_sounds" "hole_hit*.wav")
    delete_files $(find_files "$sfx_atmosphere_sounds" "cave_hit*.wav")
    delete_files $(find_files "$sfx_random_ambience_sounds" "cicada_short_*.wav")
    delete_files $(find_files "$sfx_random_ambience_sounds" "rand_gulls_*.wav")
    delete_files $(find_files "$sfx_random_ambience_sounds" "wood_creaks_new*.wav")
    delete_files $(find_files "$sfx_ambience_sounds" "rur5b_cricket_loop*.wav")
    delete_files $(find_files "$sfx_random_ambience_sfx_sounds" "metalscrapeverb*.wav")
}
alarms(){
    delete_file "$sfx_alarm"
    delete_file "$sfx_alarm_2"
    delete_file "$sfx_church_bell"
}
survival() {
    delete_file "$font_file"
    weapons
    alarms
    ambience
    #footsteps
}
help() {
    clear
    echo -e "-------------------\n| Config Commands |\n-------------------\n\n'SURVIVAL'\n'WEAPONS'\n''\n"
}
run_script() {
    if [ "$arg1" = "help" ] || [ "$arg1" = "" ]; then
        help
    elif [ "$arg1" = "weapons" ]; then
        weapons
    elif [ "$arg1" = "survival" ]; then
        survival
    elif [ "$arg1" = "amb" ]; then
        ambience
    fi
}

run_script "$arg1"