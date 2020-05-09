#!/bin/sh

DIR=`dirname "$BASH_SOURCE"`
TC1=${1:-ice.ii}

$DIR/cc1plus -fmax-errors=1 -fsyntax-only -fpreprocessed -fconstexpr-depth=16 -quiet $TC1 -o /dev/stdout 2>&1 | grep 'evaluation depth exceeds maximum'
