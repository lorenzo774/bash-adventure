#!/bin/bash

# Get the map from this bash script
source ./map.sh
# Get player functions
source ./player.sh
# Input handling
source ./input.sh

FRAME=0
MAX_FRAME_NUMBER=100

start() {
	generate_map
}

game_loop() {
	while [ $FRAME -lt $MAX_FRAME_NUMBER ]
	do
		clear
		# Start update
		player_start_update

		# Draw all the objects
		echo -e "FRAME: $FRAME\tPRESS CTRL+C TO EXIT\n\n"
		echo -e "$MAP"
		player_draw

		# Input handling
		input_update

		# End update
		player_end_update
		(( FRAME++ ))
	done
}

# START
start
game_loop
