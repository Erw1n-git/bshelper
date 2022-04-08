#!/usr/bin/zsh

car=('BMW' 'TOYOTA' 'HONDA')

#Print whole array
echo "${car[@]}"

#Print the value by index
#
#NOTE: in bash arrays start with 0, whereas in zsh arrays start with 1!!!
#

#Print the length of array
echo "${#car[@]}"

#Remove item by index
car=($car[1,2-1] $car[2+1,-1])
echo "${car[@]}"

#Add item by index
car[3]='KIA'
echo "${car[@]}"
