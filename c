#!/bin/bash

if [[ -e $1.cpp  ]]
then
	g++ $1.cpp -o $1 && ./$1
else
	echo "Sorry, $1.cpp does not exist."

fi
