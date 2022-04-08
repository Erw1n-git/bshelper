#!/usr/bin/zsh

# break - stop loop
# continue - skip current step

# 1st way of writing for-loop
for i in {0..20..2}
do 
	echo $i
done

echo
echo

# 2nd way of writing for-loop
for (( i=0; i<5; i++ ))
do
	echo $i
done

echo
echo

# My test script for for-loop
echo "Enter a number..."
read input_number

echo "Done."
