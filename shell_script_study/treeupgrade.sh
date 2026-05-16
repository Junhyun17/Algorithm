#!/bin/bash

BLUE="\033[34m"
GREEN="\033[32m"
RESET="\033[0m"

print_name()
{
        local filepath="$1"
        local name="${filepath##*/}"

        if [ -d "$filepath" ]; then
                echo -e "${BLUE}${name}${RESET}"
        elif [ -x "$filepath" ]; then
                echo -e "${GREEN}${name}${RESET}"
        else
                echo "$name"
        fi
}

list_recursive()
{
        local filepath="$1"
        local prefix="$2"
        local items=()
        local item
        local i=0

        for item in "$filepath"/*
        do
                [ -e "$item" ] && items+=("$item")
        done

        for item in "${items[@]}"
        do
                i=$((i + 1))

                if [ "$i" -eq "${#items[@]}" ]; then
                        echo -ne "${prefix}└── "
                        print_name "$item"
                        [ -d "$item" ] && list_recursive "$item" "${prefix}    "
                else
                        echo -ne "${prefix}├── "
                        print_name "$item"
                        [ -d "$item" ] && list_recursive "$item" "${prefix}│   "
                fi
        done
}

target="${1:-.}"

print_name "$target"
list_recursive "$target" ""
