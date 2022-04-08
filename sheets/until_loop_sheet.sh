#!/usr/bin/zsh

number=1
until [ $number -gt 10 ]
do
	echo $number
	number=$(( number+1 ))
done	
