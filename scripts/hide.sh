#!/bin/bash

while read -r line; do
    echo -e "\x1b[8m$line"
done <&0
