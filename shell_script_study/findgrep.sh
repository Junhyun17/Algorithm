#!/bin/bash

pattern="$1"
startdir="$2"
filepattern="$3"

if [ -z "$pattern" ]; then
    echo "Usage: $0 <pattern> [startdir] [filepattern]" >&2
    exit 1
fi

if [ -z "$startdir" ]; then
    startdir="."
fi

if [ -z "$filepattern" ]; then
    filepattern="*"
fi

find "$startdir" -type f -name "$filepattern" | xargs grep -nH "$pattern"
