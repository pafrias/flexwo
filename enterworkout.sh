#!/bin/bash

#import functions
. ./functions.sh

clear

tput cup 6 12; echo "Enter Workout"

# get WO date
tput cup 8 12; echo "Enter month (NN): "; read month
tput cup 9 12; echo "Enter day (NN): "; read day;
tput cup 10 12; echo "Enter year (NNNN): "; read year

# gen new WO id -> get length of workouts file
touch ${srcdir}/data/workouts

# write new workout to record


# select an exercise

# read weight and reps

# 