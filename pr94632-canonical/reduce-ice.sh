#!/bin/sh

DIR=`dirname "$BASH_SOURCE"`
TC1=${1:-ice.ii}

$DIR/cc1plus -fmax-errors=1 -fsyntax-only -fpreprocessed -quiet $TC1 -o /dev/stdout 2>&1 | grep 'canonical types'
