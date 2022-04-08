#!/usr/bin/zsh

echo "Enter a number..."
read input_number

i=0

while [ $i -le $input_number ]
do
	echo $i
	if [ $input_number -eq $i ]; then
		echo "Your number is:" $i
	fi		
	i=$(( i+1 ))
done

echo
echo "Done."
