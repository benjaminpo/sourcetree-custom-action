#!/bin/sh

# File: git-cleanup.sh
# Parameters: $SHA
#
# Note: Required manual refresh (command+r) after perform custom action


# Core

git gc --prune=now
git remote prune origin
