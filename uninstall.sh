#!/usr/bin/bash

while [ true ]; do
	echo -r "Are you sure you want to remove bshelper(y/n): "
	read input_key

	if [ "$input_key" == "y" ] || [ "$input_key" == "Y" ]; then
		echo "removing bshelper..."
		echo
		echo "removing binaries..."
		rm -r /usr/bin/bshelper
		echo
		echo "removing /etc files..."
		rm -r /etc/bshelper
		echo
		echo "done."
		echo
	elif [ "$input_key" == "n" ] || [ "$input_key" == "N" ]; then
		echo "exiting script..."
		exit
	else
		echo "Unknown command. Try again..."
	fi
done
