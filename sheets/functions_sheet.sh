#!/usr/bin/zsh

#Function without parameter
function printString()
{
	echo "Test funtion!"
}

#Function with parameter
function printStringArg()
{
	echo "Test function with a parameter: $1"
}

#Function with global variable
function declareGVariable()
{
	global_variable="This is a global variable!"
	echo "In fun: $global_variable"
}

#Function with local variable
function declareLVariable()
{
	local local_variable="This is a local variable"
	echo "In fun: $local_variable"
}


printString
echo

echo "Enter a parameter: "
read input_parameter
printStringArg "$input_parameter"
echo

declareGVariable
echo "Out of fun: $global_variable"
echo

declareLVariable
echo "Out fun: $local_variable"
echo
