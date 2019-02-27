#!/bin/sh

# File: git-cleanup.sh
# Parameters: N/A
#
# Note: Required manual refresh (command+r) after perform custom action



# Core

git fetch --tags -f
git gc --prune=now
git remote prune origin
