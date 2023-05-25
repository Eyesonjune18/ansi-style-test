#!/usr/bin/bash

while read -r line; do
    echo -e "\x1b[9m$line"
done <&0
