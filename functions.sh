#!/bin/bash

function __args__() {
    declare -i num_expected_args num_args
    num_expected_args=$1
    shift
    num_args=$#
    if [ $num_args -lt $num_expected_args ]; then
        usage
        exit 1
    else
        $@
    fi
}

function __args_default__() {
    declare -i num_expected_args num_args
    num_expected_args=$1
    shift
    default_arg=$1
    shift
    num_args=$#

    if [ $num_args -lt $num_expected_args ]; then
        usage
        exit 1
    else
        $default_arg "$@"
    fi
}
