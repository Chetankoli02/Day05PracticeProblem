#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 n"
    exit 1
fi

n=$1
power=1

echo "Powers of 2 less than or equal to 2^$n:"

while [[ $power -le 256 && $power -le $((2**n)) ]]
do
    echo $power
    power=$((power*2))
done
