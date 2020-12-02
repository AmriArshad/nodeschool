#!/usr/bin/env bash

elements=(I am "${@:2:2}" and "${@:4:1}")

echo ${elements[*]}
