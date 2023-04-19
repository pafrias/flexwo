#!/bin/bash

srcdir=/Users/diablo/code/Study/UNIX/flexlifter

initFiles()
{
	touch ${srcdir}/data/workouts
	touch ${srcdir}/data/exercises
	touch ${srcdir}/data/equipment
	touch ${srcdir}/data/sets
}

# printMenu()
# $1: row
# $2: column
# $3: array of lines to print
printMenu()
{

	local row=$1
	shift
	local col=$1
	shift
	local array=("$@")

	for string in "${array[@]}"; do
		tput cup $row $col; echo $string
		row=$(($row+1))
	done
}




# there has been an issue with passing in arguments INCLUDING an array

# the solution so far is to pass the array last, and save the other arguments
# and then treat the remaining "arguments" as an array

# issue 2: all arguments are passed in as strings!!!!!
