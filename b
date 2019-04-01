#!/bin/bash
set -e

rm -rf foo.py foo_wrap.cxx foo_wrap.h _foo.so __pycache__

if [[ $1 == "clean" ]]; then
	exit 0
fi

swig -python -py3 -c++ foo.i
g++ -fPIC -std=c++14 -O0 foo_wrap.cxx -I/usr/local/include/python3.7m -shared -o _foo.so

