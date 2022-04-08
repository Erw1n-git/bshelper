#!/usr/bin/zsh

# ls -al 1>file1.txt 2>errorfile2.txt - write cmd output to file with index 1
# 					write cmd error to file with index 2

# ls -al 1>file1.txt 2>&1 - write cmd output to file with index 1
# 			  - write cmd error to file with index 1

# ls -al >& file1.txt 	- will do the same 

