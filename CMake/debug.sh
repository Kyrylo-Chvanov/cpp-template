#!/usr/bin/env bash

cd src
cmake --preset debug
cd ../build_debug
make run