#!/usr/bin/zsh

echo "Enter Hex Number:"
read Hex

echo -n "The decimal value of $Hex is: "

echo "obase=10; ibase=16; $Hex" | bc
# bc is not pre-installed!!!
