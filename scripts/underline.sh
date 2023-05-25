#!/bin/bash

while read -r line; do
    echo -e "\x1b[4m$line"
done <&0
