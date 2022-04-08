#!/usr/bin/zsh

echo "Please talk to me..."
read input_string
case "$input_string" in 
	"hello")
		echo "Hello yourself!"
		;;
	"bye")
		echo "See you again!"
		;;
	*)
		echo "Sorry, I don't understand"
		;;
esac
echo

echo "Please say a number..."
read input_number
case $input_number in
	1)
		echo "It's number 1!"
		;;
	2)
		echo "It's number 2!!"
		;;
	*)
		echo "Sorry, the number is too complex for me!("
		;;
esac
echo "Done."
