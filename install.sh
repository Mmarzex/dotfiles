#!/bin/bash

create_symlinks() {
	# Get the directory in which this script lives.
	script_dir=$(dirname "$(readlink -f "$0")")

	echo "Config Dir $script_dir"

	if [ -d ~/.config ]; then
		for d in $script_dir/.config/*; do
			echo "Symlinking $d"
			ln -s $d ~/.config
		done
	else
		ln -s $script_dir/.config ~/
	fi
}

create_symlinks
