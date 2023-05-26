#!/bin/bash

case $1 in
    blink)
        start="\x1b[5m"
        end="\x1b[25m"
        ;;
    dim)
        start="\x1b[2m"
        end="\x1b[22m"
        ;;
    bold)
        start="\x1b[1m"
        end="\x1b[22m"
        ;;
    hide)
        start="\x1b[8m"
        end="\x1b[28m"
        ;;
    invert)
        start="\x1b[7m"
        end="\x1b[27m"
        ;;
    ital)
        start="\x1b[3m"
        end="\x1b[23m"
        ;;
    strike)
        start="\x1b[9m"
        end="\x1b[29m"
        ;;
    uline)
        start="\x1b[4m"
        end="\x1b[24m"
        ;;
    *)
        echo "Usage: $0 <blink|dim|bold|hide|invert|ital|strike|uline>"
        exit 1
        ;;
esac

while read -r line; do
    echo -e "$start$line$end"
done <&0
