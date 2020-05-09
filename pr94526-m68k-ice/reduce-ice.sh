#!/bin/sh

DIR=`dirname "$BASH_SOURCE"`
TC1=${1:-ice.i}

$DIR/cc1 -fpreprocessed -quiet -O2 -g $TC1 -o /dev/stdout 2>&1 | grep 'new_elt_loc_list'
