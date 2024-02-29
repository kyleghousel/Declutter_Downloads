#!/bin/zsh

downloads_dir="/Users/username/Downloads"

cd "$downloads_dir" || exit 1

# Target filenames/types to be deleted
string_to_match="appname_beta"
string2_to_match="appname_RC"
filetype_to_match=".zip"  

# Delete files matching the criteria
for file in *; do
    if [[ "$file" == "$string_to_match"* || "$file" == "$string2_to_match"* || "$file" == *"$filetype_to_match" ]]; then
        echo "Deleting $file! Say bye-bye..."
        rm -f "$file"
    fi
done

echo "Done."
