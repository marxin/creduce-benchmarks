#!/bin/sh

TC1=${1:-ice.ii}

/home/marxin/Programming/creduce-benchmarks/pr94632-canonical/cc1plus -fmax-errors=1 -fsyntax-only -fpreprocessed -quiet $TC1 -o /dev/stdout 2>&1 | grep 'canonical types'
