#!/bin/bash

echo "compiling $1.cpp..."
if [[ -e $1.cpp  ]]
then
	g++ $1.cpp -m32 -o $1 && ./$1
else
	echo "Sorry, $1.cpp does not exist."

fi
