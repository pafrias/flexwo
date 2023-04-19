#!/bin/bash

#import functions
. ./functions.sh

initFiles

menuOptions=("(E)nter Workout" "(V)iew Workouts" "(Q)uit")
isLooping=true
while [ $isLooping = true ]; do
	clear
	#print menu
	tput cup 6 12; echo "Welcome to Flex Lifter"

	printMenu 8 12 "${menuOptions[@]}"

	#gather input
	tput cup 15 12;

	read -p ": " userIn
	userIn=${userIn:-E}

	case $userIn in
		[Ee] ) 
			./enterworkout.sh;;
		[Vv] )
			echo 'cool';;
		[Qq] )
			isLooping=false;;
	esac

done
	
clear