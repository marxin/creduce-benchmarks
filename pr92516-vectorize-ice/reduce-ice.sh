#!/bin/sh

TC1=${1:-bug.cc}

/home/marxin/Programming/creduce-benchmarks/pr92516-vectorize-ice/cc1plus -fpreprocessed -quiet -O3 -std=c++1z -Werror $TC1 -o /dev/stdout 2>&1 | grep 'vect_schedule_slp_instance'
