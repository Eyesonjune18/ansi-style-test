#!/bin/bash

while read -r line; do
    echo -e "\x1b[3m$line\x1b[23m"
done <&0
