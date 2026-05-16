#!/bin/bash

directory="${HOME}/diary"

if [ ! -d "$directory" ]; then
    mkdir "$directory"
fi

diaryfile="${directory}/$(date '+%Y-%m-%d').txt"

if [ ! -e "$diaryfile" ]; then
    date '+%Y/%m/%d' > "$diaryfile"
fi

vim "$diaryfile"
