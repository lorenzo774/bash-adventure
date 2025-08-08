#!/bin/bash

# Get player.sh to modify delta variables
source ./player.sh

input_update() {
	read -s -n 1 -t 0.5 PLAYER_INPUT

        if [[ "${PLAYER_INPUT,,}" == "w" ]]; then
                PLAYER_DELTA_Y=1
        fi
        if [[ "${PLAYER_INPUT,,}" == "s" ]]; then
                PLAYER_DELTA_Y=-1
        fi
        if [[ "${PLAYER_INPUT,,}" == "a" ]]; then
                PLAYER_DELTA_X=-1
        fi
        if [[ "${PLAYER_INPUT,,}" == "d" ]]; then
                PLAYER_DELTA_X=1
        fi
}
