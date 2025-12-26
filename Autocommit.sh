#!/bin/bash

export PATH=/usr/bin:/bin

# Move to the directory where this script lives
cd "$(dirname "$0")" || exit 1

git add --all

if ! git diff --cached --quiet; then
    git commit -m "Auto commit: $(date '+%Y-%m-%d %H:%M')"
    git push
fi

