#!/usr/bin/bash

output_file="out/LaTex.hsnips"
> $output_file

for file in snips/*; do
    [[ "$file" == "snips/keywords.hsnips" ]] && continue
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"
done

# Generate backslash snippets from snips/keywords.hsnips
while IFS= read -r line; do
    [[ -z "$line" || "$line" == \#* ]] && continue
    echo "snippet $line \"$line\" iAm" >> "$output_file"
    echo "\\$line" >> "$output_file"
    echo "endsnippet" >> "$output_file"
    echo "" >> "$output_file"
done < "snips/keywords.hsnips"