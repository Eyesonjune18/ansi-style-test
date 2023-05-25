#!/bin/bash

while read -r line; do
    echo -e "\x1b[2m$line"
done <&0
