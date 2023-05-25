#!/bin/bash

while read -r line; do
    echo -e "\x1b[1m$line"
done <&0
