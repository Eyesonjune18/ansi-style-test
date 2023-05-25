#!/bin/bash

while read -r line; do
    echo -e "\x1b[5m$line"
done <&0
