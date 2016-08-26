#! /usr/bin/env bash

for file in `find . -name ".*" -type f`; do
    cp ${PWD}/${file:2} ${HOME}/
done
