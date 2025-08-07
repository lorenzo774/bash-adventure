#!/bin/bash

# Get the map from this bash script
source ./map.sh

FRAME=0
MAX_FRAME_NUMBER=100

start() {
	generate_map
}

game_loop() {
	while [ $FRAME -lt $MAX_FRAME_NUMBER ]
	do
		clear
		echo -e "FRAME: $FRAME\tPRESS CTRL+C TO EXIT\n\n"
		echo -e "$MAP"
		sleep .5
		(( FRAME++ ))
	done
}

# START
start
game_loop
