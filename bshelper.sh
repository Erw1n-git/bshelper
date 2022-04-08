#!/bin/bash

#===========================
#=    WRITTEN BY ERWIN     =
#=   Copyright @erw1n-git  =
#===========================

#============ [ Global Variables ] =============
BSHELPER_VERSION=1.0
FIGLET_PATH="/etc/bshelper/figlets/init_figlet.txt"

HELLO_SHEET="/etc/bshelper/sheets/hello_sheet.sh"
REDIRECT_TO_FILE_SHEET="/etc/bshelper/sheets/redir_to_file_sheet.sh"
COMMENTS_SHEET="/etc/bshelper/sheets/comments_sheet.sh"
IFELSE_STATEMENTS_SHEET="/etc/bshelper/sheets/ifelse_statements_sheet.sh"
CASE_STATEMENTS_SHEET="/etc/bshelper/sheets/case_statements_sheet.sh"
WHILE_LOOP_SHEET="/etc/bshelper/sheets/while_loop_sheet.sh"
UNTIL_LOOP_SHEET="/etc/bshelper/sheets/until_loop_sheet.sh"
FOR_LOOP_SHEET="/etc/bshelper/sheets/for_loop_sheet.sh"
ARRAYS_SHEET="/etc/bshelper/sheets/arrays_sheet.sh"
FUNCTIONS_SHEET="/etc/bshelper/sheets/functions_sheet.sh"
OUTPUT_SHEET="/etc/bshelper/sheets/output_sheet.sh"
ARITHMETIC_OPERATIONS_SHEET="/etc/bshelper/sheets/arithmetic_operations_sheet.sh"
STRING_PROCESSING_SHEET="/etc/bshelper/sheets/string_processing_sheet.sh"
HEX_OPERATIONS_SHEET="/etc/bshelper/sheets/hex_operations_sheet.sh"
FLAGS_SHEET="/etc/bshelper/sheets/flags_sheet.sh"

EDITOR="none"

BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'
#===============================================

#============ [ Functions ] =============
function fileExists()
{
	if [[ -f "$1" ]]; then
		return 1
	else
		return 0
	fi
}

function flagHelp()
{
	echo "Usage: bshelper [OPTION] ..."
	echo "Print bash scripting cheatsheet."
	echo
	echo "  -h         display this help and exit"
	echo "  -v	     display current version of script"
	echo "  -e \"..\"    set editor for watching sheets(Available: none, vim, nano, mousepad)"
	echo
	exit
}

function flagVersion()
{
	echo "bshelper" $BSHELPER_VERSION
	echo "Copyright (C) 2022 Erw1n Software Technologies, Inc."
	echo "This is free software; you are free to change and redistribute it."
	echo "There is NO WARRANTY, to the extent permitted by law."
	echo
	echo -e "Written by Erwin Hemnitz(git uname: ${BLUE}Erw1n-git${NC})"
	exit
}

function flagEditor()
{
	if [[ "$1" == "none" ]]; then
		EDITOR="none"
	elif [[ "$1" == "vim" ]]; then
		EDITOR="vim"
	elif [[ "$1" == "mousepad" ]]; then
		EDITOR="mousepad"
	elif [[ "$1" == "nano" ]]; then
		EDITOR="nano"
	else
		echo "Invalid editor name(use help -h)"
		exit
	fi	
}

function printSheet()
{
	fileExists $1
	local sheetExists=$?

	if [ $sheetExists -eq 1 ]; then
		if [[ $EDITOR == "none" ]]; then
			echo -e "----------==========[ ${BLUE}$1${NC} ]==========----------"
			echo 
			cat $1
			echo
			echo -e "----------==========[ ${BLUE}$1${NC} ]==========----------"
		elif [[ $EDITOR == "vim" ]]; then
			vim -R $1
		elif [[ $EDITOR == "nano" ]]; then
			nano -v $1
		elif [[ $EDITOR == "mousepad" ]]; then
			mousepad $1
		fi
	else
		echo -e "[${RED}Error${NC}] The $1 file does not exist or has been corrupted!"
	fi
}
#========================================

#============ [ Script Flaw Functions ] =============
function init_()
{
	fileExists $FIGLET_PATH
	local figletExists=$?
	
	echo
	echo

	if [ $figletExists -eq 1 ]; then
		echo -e "${BLUE}"
		cat $FIGLET_PATH
		echo -e "${NC}"
	else
		echo -e "[${RED}Error${NC}] The $FIGLET_PATH file does not exist or has been corrupted!"
	fi

	echo
}
function main_()
{
	while [ true ]; do
		echo -e "------======[ ${BLUE}BASH${NC} CHEAT SHEET LIST ]======------"
		echo -e " ${BLUE}[1]${NC}	Basic Hello sheet"
		echo -e " ${BLUE}[2]${NC}	Redirect i/o to file sheet"	
		echo -e " ${BLUE}[3]${NC}	Comments example sheet"
		echo -e " ${BLUE}[4]${NC}	IF/ELIF/ELSE statements sheet"
		echo -e " ${BLUE}[5]${NC}	CASE statements sheet"
		echo -e " ${BLUE}[6]${NC}	While loop sheet"
		echo -e " ${BLUE}[7]${NC}	Until loop sheet"
		echo -e " ${BLUE}[8]${NC}	For loop sheet"
		echo -e " ${BLUE}[9]${NC}	Arrays sheet"
		echo -e " ${BLUE}[10]${NC}	Functions sheet"
		echo -e " ${BLUE}[11]${NC}	Command output sheet"
		echo -e " ${BLUE}[12]${NC}	Arithmetic operations sheet"
		echo -e " ${BLUE}[13]${NC}	String processing sheet"
		echo -e " ${BLUE}[14]${NC}	Hexadecimal operations sheet"
		echo -e " ${BLUE}[15]${NC}	Flags sheet"
		echo -e " ${BLUE}[99]${NC}	Exit the sheet"
		echo    "------====== *********************** ======------"
		echo
		printf '>> '

		read -r input_sheet
		
		case "$input_sheet" in
			1)
				printSheet $HELLO_SHEET
				;;
			2)
				printSheet $REDIRECT_TO_FILE_SHEET
				;;
			3)
				printSheet $COMMENTS_SHEET
				;;
			4)
				printSheet $IFELSE_STATEMENTS_SHEET
				;;
			5)
				printSheet $CASE_STATEMENTS_SHEET
				;;
			6)
				printSheet $WHILE_LOOP_SHEET
				;;
			7)
				printSheet $UNTIL_LOOP_SHEET
				;;
			8)
				printSheet $FOR_LOOP_SHEET
				;;
			9)
				printSheet $ARRAYS_SHEET
				;;
			10)
				printSheet $FUNCTIONS_SHEET
				;;
			11)
				printSheet $OUTPUT_SHEET
				;;
			12)
				printSheet $ARITHMETIC_OPERATIONS_SHEET
				;;
			13)
				printSheet $STRING_PROCESSING_SHEET
				;;
			14)
				printSheet $HEX_OPERATIONS_SHEET
				;;
			15)
				printSheet $FLAGS_SHEET
				;;
			99)
				echo
				echo -e "Exiting the ${BLUE}script${NC}..."
				echo
				exit
				;;
			*)
				echo -e "[${RED}Error${NC}] Invalid option number" 
				;;
		esac
		echo
	done
}
#====================================================


while getopts "hve:" option; do
	case $option in
		h)
			flagHelp
			;;
		v)
			flagVersion
			;;
		e)
			flagEditor ${OPTARG}
			;;
		\?)
			echo "unrecognized option: ${option}"
		esac
done

init_
main_
