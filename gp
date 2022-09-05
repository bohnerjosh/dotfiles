#!/bin/bash

CXX="g++ -g -std=c++17 -fmax-errors=5"

echo "compiling $1.cpp..."
if [[ -e $1.cpp  ]]
then
	$CXX $1.cpp -o $1 && ./$1
else
	echo "Sorry, $1.cpp does not exist."

fi
