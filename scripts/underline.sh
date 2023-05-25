#!/bin/bash

while read -r line; do
    echo -e "\x1b[4m$line\x1b[24m"
done <&0
