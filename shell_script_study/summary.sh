#!/bin/bash

filepath="$1"

if [ -d "$filepath" ]; then
    echo "$filepath is directory"
    ls "$filepath"
elif [ -f "$filepath" ]; then
    echo "$filepath is file"
    head -n 5 "$filepath"
else
    echo "$filepath is not found"
fi
