#!/bin/bash

start="\x1b["

# Check if any arguments are provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <style1> [<style2> ...]"
    exit 1
fi

# Iterate through each argument and construct the escape sequence
while [ $# -gt 0 ]; do
    case $1 in
        blink)
            start+="5;"
            ;;
        dim)
            start+="2;"
            ;;
        bold)
            start+="1;"
            ;;
        hide)
            start+="8;"
            ;;
        invert)
            start+="7;"
            ;;
        ital)
            start+="3;"
            ;;
        strike)
            start+="9;"
            ;;
        uline)
            start+="4;"
            ;;
        *)
            echo "Invalid style: $1"
            echo "Usage: $0 <style1> [<style2> ...]"
            exit 1
            ;;
    esac
    shift
done

# Remove the trailing semicolon from the escape sequence
start="${start%?}m"

# Read input from stdin and apply the constructed escape sequence
while read -r line; do
    echo -e "$start$line\x1b[0m"
done <&0
