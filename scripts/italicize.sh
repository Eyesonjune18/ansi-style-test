#!/usr/bin/bash

while read -r line; do
    echo -e "\x1b[3m$line"
done <&0
