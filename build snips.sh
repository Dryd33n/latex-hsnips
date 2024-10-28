#!/usr/bin/bash

output_file="out/LaTex.hsnips"
> $output_file

for file in snips/*; do
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"
done