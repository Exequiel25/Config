#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi

# Set the MIME type and desktop file names
mime_type="inode/directory"
desktop_file1="code.desktop"
desktop_file2="pcmanfm.desktop"

# Find the line in the mimeinfo.cache file that corresponds to the MIME type
line=$(grep -n "$mime_type=" /usr/share/applications/mimeinfo.cache | cut -d: -f1)

# If the line exists, modify it to prioritize the second desktop file
if [[ ! -z "$line" ]]; then
    sed -i "${line}s/$desktop_file1;$desktop_file2/$desktop_file2;$desktop_file1/" /usr/share/applications/mimeinfo.cache
fi
