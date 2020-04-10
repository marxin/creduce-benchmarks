#!/bin/sh

TC1=${1:-pr94526.i}

/home/marxin/Programming/creduce-benchmarks/pr94526-m68k-ice/cc1 -fpreprocessed -quiet -O2 -g $TC1 -o /dev/stdout 2>&1 | grep 'new_elt_loc_list'
