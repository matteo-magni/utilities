#!/usr/bin/env bash

wipe=$(dirname $0)/wipe.sh
parallelism=10

while read file; do
    while [ $parallelism -le $(jobs | wc -l) ]; do
        echo "waiting..."
        sleep 1
    done
    $wipe "$file" &
done
