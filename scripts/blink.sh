#!/bin/bash

while read -r line; do
    echo -e "\x1b[5m$line\x1b[25m"
done <&0
