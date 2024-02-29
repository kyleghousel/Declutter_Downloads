#!/bin/zsh

downloads_dir="/Users/username/Downloads"

cd "$downloads_dir" || exit 1

# Target filenames/types to be moved to trash
string_to_match="appname_beta"
string2_to_match="appname_RC"
filetype_to_match=".zip"  

# Move files to trash that match the criteria
for file in *; do
    if [[ "$file" == "$string_to_match"* || "$file" == "$string2_to_match"* || "$file" == *"$filetype_to_match" ]]; then
        echo "Moving $file to trash..."
        mv -f "$file" ~/.Trash/
    fi
done

echo "Done."
