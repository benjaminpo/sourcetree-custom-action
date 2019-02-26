#!/bin/sh

# File: git-merge-no-ff-ignore-white-space.sh
# Parameters: $SHA

TARGET_BRANCH_NAME=$(git branch --contains $1)
CURRENT_BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

git merge $1 --no-ff -Xignore-all-space -m "Merge commit $TARGET_BRANCH_NAME '$1' into $CURRENT_BRANCH_NAME"
