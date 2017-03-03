#!/bin/bash

style=file

function reformat() {
	clang-format-3.7 -i -style=${style} $1    
}

function reformat_filetype() {
	for file in $( find . -name "$1" ); do
  		reformat $file; 
    done
}


extensions="*.h *.hpp *.c *.cpp"

for extension in ${extensions}; do
	reformat_filetype $extension
done

