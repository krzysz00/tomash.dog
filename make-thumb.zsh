#!/usr/bin/env zsh

set -euxo pipefail

if (( $# != 1 )); then
    echo "Usage: $0 [image file to thumbnail]"
    exit 1
fi

local dir="${1:h}"
local file="${1:t}"
exec convert "$dir/$file" -resize x200 "$dir/thumbs/$file"
