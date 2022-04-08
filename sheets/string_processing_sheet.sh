#!/usr/bin/zsh

echo "enter 1st string"
read str1

echo "enter 2nd string"
read str2

#Are the strings equal?
if [[ "$str1" == "$str2" ]]; then
	echo "strings match"
else
	echo "strings dont match("
fi

#Which string is lexicographically longer?
if [[ "$str1" < "$itr2" ]]; then
	echo "$str1 is smaller than $str2"
elif [[ "$str1" > "$str2" ]]; then
	echo "$str2 is smaller than $str1"
else
	echo "strings are equal"
fi

#Which string is longer?

strlength1=$(echo -n $str1 | wc -m)
strlength2=$(echo -n $str2 | wc -m)

if [ $strlength1 -gt $strlength2 ]; then
	echo "$str1 is bigger than $str2"
elif [ $strlength2 -gt $strlength1 ]; then
	echo "$str2 is bigger than $str1"
else
	echo "strings are equal"
fi

#Strings concatination
c=$str1$str2
echo $c

#Lowercase
echo ${str1^}

#Uppercase
echo ${str2^^}


