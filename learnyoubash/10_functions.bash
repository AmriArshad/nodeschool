#!/usr/bin/env bash

function evenNumbers () {
	[[ $1 -lt $2  ]] || return
	
	indent="$3"
	if [[ $(($1 % 2)) == 0  ]]; then
		for (( i = 0; i < $indent; i++)); do
			echo -n ' '
		done
		echo $1
		indent=$((indent + 1))
	fi

	evenNumbers $(($1 + 1)) $2 $indent
}

function main () {
	echo $FUNCNAME
	evenNumbers $1 $2 1
}

main $1 $2
