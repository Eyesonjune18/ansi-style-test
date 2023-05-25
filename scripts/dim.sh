#!/bin/bash

while read -r line; do
    echo -e "\x1b[2m$line\x1b[22m"
done <&0
