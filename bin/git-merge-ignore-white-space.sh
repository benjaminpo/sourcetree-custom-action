#!/bin/sh

# File: git-merge-ignore-white-space.sh
# Parameters: $SHA

TARGET_BRANCH_NAME=$(git branch --contains $1)
CURRENT_BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

git merge $1 -s recursive -Xignore-space-at-eol -Xignore-all-space -m "Merge branch$TARGET_BRANCH_NAME into $CURRENT_BRANCH_NAME"
