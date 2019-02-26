#!/bin/sh

# File: git-move-tag-staging.sh
# Parameters: $SHA
#
# Note: Required manual refresh (command+r) after perform custom action

# Config

# JENKINS_URL="JENKINS_URL"
# JENKINS_JOB_NAME="JENKINS_JOB_NAME"
# JENKINS_USER="JENKINS_USER"
# JENKINS_TOKEN="JENKINS_TOKEN"

# Core

TAG="test"

git gc --prune=now
git remote prune origin
git fetch --tags --prune origin
git push origin :$TAG
git tag --delete $TAG
git tag -f -a $TAG $1 -m "$TAG"
git push origin $TAG
git fetch --tags --prune origin

# sleep 5m

# curl -X POST $JENKINS_URL/job/$JENKINS_JOB_NAME/build \
#  --user $JENKINS_USER:$JENKINS_TOKEN
