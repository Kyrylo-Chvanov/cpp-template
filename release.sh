#!/usr/bin/env bash

cd src
cmake --preset release
cd ../build_release
make run