#!/bin/bash

HOUR=$(date +%k)
PIC=~/Pictures/bitday

if [[ -s $PIC ]]; then
    echo "bitday.sh There are no bitday images in your local Pictures/folder." 1>&2
    exit 1



