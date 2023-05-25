#!/bin/bash

while read -r line; do
    echo -e "\x1b[9m$line\x1b[29m"
done <&0
