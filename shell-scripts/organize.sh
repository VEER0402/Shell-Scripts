#!/bin/bash

# Folders to KEEP in current directory
KEEP=("17Nov2025" "18Nov2025" "19Nov2025" "20Nov2025" "26Nov2025")

# Create OldDirectory if it doesn't exist
mkdir -p OldDirectory

# Loop over all items in the current directory
for item in *; do
    # Skip the script itself
    [ "$item" == "organize.sh" ] && continue

    # Skip OldDirectory itself
    [ "$item" == "OldDirectory" ] && continue

    # Check if item is in KEEP list
    keep_it="no"
    for k in "${KEEP[@]}"; do
        if [ "$item" == "$k" ]; then
            keep_it="yes"
            break
        fi
    done

    # If not in KEEP list → move to OldDirectory
    if [ "$keep_it" == "no" ]; then
        mv "$item" OldDirectory/
    fi
done

echo "✔ Done! Everything except Nov folders moved to OldDirectory."

