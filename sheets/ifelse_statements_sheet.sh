#!/usr/bin/zsh

echo "Enter an integer:"
read count

echo "Enter a string:"
read string

# condition operators: 
# 	-eq (var1 is eqaual var2),
#	-ne (var1 is not equal var2),
#	-gt (var1 is greater than var2),
#	-ge (var1 is greater or equal to var2),
#	-lt (var1 is less than var2),
#	-le (var1 is less than or equal to var2),
#	-z  (string1 is NULL),
#	-n  (string1 is not NULL)
#	&&  ( [1cond] AND [2cond] ) OR ( [[ 1cond AND 2cond ]] )
#	||  ( [1cond] OR [2cond] ) OR ( [[ 1cond OR 2cond ]] )


# ======= [ THE CONDITION 1 ] ======
if [ $count -eq 10 ]; then 
	echo "the condition1 is true"
elif [ $count -lt 10 ]; then
	echo "the condition1 is true"
else
	echo "the condition1 is false"
fi

# ======= [ THE CONDITION 2 ] =======
if [ -n "$string" ]; then
	echo "the condition2 is true"
else
	echo "the condition2 is false"
fi

# ======= [ THE CONDITION 3 ] =======
if [ -n "$string" ] && [ $count -eq 10 ]; then
	echo "the condition3 is true"
else
	echo "the condition3 is false"
fi

