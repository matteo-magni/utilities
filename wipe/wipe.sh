#!/usr/bin/env bash

target=$1
numpasses=7

[ ! -w "$target" ] && echo "File $target is not writable" >&2 && exit 1

size=$(wc -c < "$target" | sed 's/ //g')

pass=0
while [ $pass -lt $numpasses ]; do
    let pass=$pass+1
    dd if=/dev/urandom of="$target" count=1 bs=$size 2>/dev/null
done

[ $(uname -s | tr 'A-Z' 'a-z') == "darwin" ] && rm -fP "$target" || rm -f "$target"
echo "File $target wiped with $pass passes"
