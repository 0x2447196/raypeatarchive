#!/bin/zsh

directory=$(pwd)  # Use the current directory

for file in $directory/*.shtml.md.md; do
    if [[ -f $file ]]; then
        new_filename="${file%.shtml.md.md}.md"
        mv -- "$file" "$new_filename"
        echo "Renamed $file to $new_filename"
    fi
done

echo "File renaming complete."
