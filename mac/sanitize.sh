#!/bin/bash

sanitize_filename() {
    local filename="$1"
    # Remove or replace problematic characters
    sanitized=$(echo "$filename" | sed -e 's/[<>:"\/\\|?*'"'"']/_/g')
    
    # Remove control characters
    sanitized=$(echo "$sanitized" | tr -d '[:cntrl:]')
    
    # Remove leading and trailing whitespaces
    sanitized=$(echo "$sanitized" | sed -e 's/^ *//;s/ *$//')

    # If the filename becomes empty, use a default name
    if [ -z "$sanitized" ]; then
        sanitized="unnamed"
    fi
    
    echo "$sanitized"
}

sanitize_directory() {
    local dir="$1"
    
    find "$dir" -depth | while read -r path; do
        if [ -d "$path" ]; then
            echo "Processing directory: $path"
        fi
        
        dirname=$(dirname "$path")
        basename=$(basename "$path")
        new_basename=$(sanitize_filename "$basename")
        
        if [ "$basename" != "$new_basename" ]; then
            new_path="$dirname/$new_basename"
            if mv "$path" "$new_path"; then
                echo "Renamed: $path -> $new_path"
            else
                echo "Error renaming $path" >&2
            fi
        fi
    done
}

# Main script
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a valid directory" >&2
    exit 1
fi

sanitize_directory "$directory"
echo "Sanitization complete."