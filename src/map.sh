#!/bin/bash

SIZE=32
MAP_PATH="data/map.txt"
MAP=""

generate_map() {
	echo -e "Generating MAP... "
	# This MAP will be loaded using a txt file or a json file
	MAP=$(cat $MAP_PATH)
}
