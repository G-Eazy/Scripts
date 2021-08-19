#!/bin/bash

#script to create a make run file for C-programming

#param1 is the desired name for the executable file
#param2 is the filename of the sourcefile

read exeFil 
read sourceFil

function output {
   echo "make:"
   echo "   -gcc -o "$exeFil $sourceFil
   echo "run:"
   echo "   ./"$exeFil

}

output > makefile



