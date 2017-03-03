#!/bin/bash

style=$1

if [ "$1" == "" ] ; then
	style=WebKit
fi

function reformat() {
	echo clang-format-3.7 -i -style=${style} $1    
	clang-format-3.7 -i -style=${style} $1    
}

function reformat_filetype() {
	for file in $( find . -name "$1" ); do
  		reformat $file; 
    done
}


extensions="*.h *.hpp *.c *.cpp"

echo Reformatting using style $1

for extension in ${extensions}; do
	reformat_filetype $extension
done

