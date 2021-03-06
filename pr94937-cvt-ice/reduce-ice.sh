#!/bin/sh

DIR=`dirname "$BASH_SOURCE"`
TC1=${1:-ice.ii}

$DIR/../pr94523-template-depth/cc1plus -fmax-errors=1 -fsyntax-only -fpreprocessed -fconstexpr-depth=16 -fno-checking -quiet $TC1 -std=c++17 -Wall -o /dev/stdout 2>&1 | grep 'cp_get_fndecl_from_callee'
