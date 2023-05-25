#!/bin/bash

while read -r line; do
    echo -e "\x1b[7m$line\x1b[27m"
done <&0
