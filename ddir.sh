#!/bin/bash

# Create file if missing
if [ ! -f ~/.dir ]; then
    touch ~/.dir
fi

# Saving filepath to variable
dir=~/.dir

function ddir() {
    usage="Command line directory manager\n
            cpdir: save directory
            chdir [dir]: change to a certain directory, default 1st
            ldir: list all saved directories
            pdir [dir]: print path of certain directory, default 1st
            cldir: clears the list of directories\n"
    printf "$usage"
}


# Copies current working directory to file if not there already
function cpdir() {
    declare -i ret
    if [ $(stat --printf="%s" $dir) -lt 2 ]; then
        eval "echo $PWD > $dir"
    else
        ret=$(grep -c $PWD ~/.dir)
        if [ $ret -eq 0 ]; then
            eval "sed -i '1i$PWD' $dir"
        fi
    fi
} 

# Changes directory to first in list or from user input index
function chdir() {
    arg=$1
    if [ -z ${arg} ]; then
        arg=1
    fi
    declare -i line_num
    line_num=1
    while IFS='' read -r line; do
        if [ $line_num -eq $arg ]; then
            output=$line
        fi
        line_num+=1
    done < $dir
    
    if [ $(wc -c $dir | cut -c1-2 ) == "1" ]; then
        echo "No saved directories"
    else
        eval "cd $output"  
    fi 
}

# Print all directories enumerated, if any
function ldir() {
    if [ $(wc -c $dir | cut -c1-2 ) == "1" ]; then
        echo "No saved directories"
    else
        eval "cat -n $dir"
    fi
}

# Prints first directory in list or user input index
function pdir() {
    arg=$1
    if [ -z ${arg} ]; then
        arg=1
    fi
    declare -i line_num
    line_num=1
    while IFS='' read -r line; do
        if [ $line_num -eq $arg ]; then
            echo $line
        fi
        line_num+=1
    done < $dir
}

# Clear directory file
function cldir() {
   echo "" > $dir 
}

