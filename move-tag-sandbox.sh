#!/bin/sh

git push origin :refs/tags/sandbox && git tag -f sandbox && git push origin sandbox
curl -X POST JENKINS_URL/job/JOB_NAME/build \
  --user USER:TOKEN
