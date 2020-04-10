#!/bin/sh

TC1=${1:-pr94523.ii}

/home/marxin/Programming/creduce-benchmarks/pr94523-template-depth/cc1plus -fmax-errors=1 -fsyntax-only -fpreprocessed -fconstexpr-depth=16 -quiet $TC1 -o /dev/stdout 2>&1 | grep 'evaluation depth exceeds maximum'
