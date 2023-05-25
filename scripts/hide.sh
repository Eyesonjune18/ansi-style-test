#!/bin/bash

while read -r line; do
    echo -e "\x1b[8m$line\x1b[28m"
done <&0
