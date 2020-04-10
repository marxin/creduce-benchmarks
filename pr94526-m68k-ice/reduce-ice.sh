#!/bin/sh

TC1=${1:-pr94526.i}

./cc1 -fpreprocessed -O2 -g $TC1 -o /dev/stdout 2>&1 | grep 'new_elt_loc_list'
