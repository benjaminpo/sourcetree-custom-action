#!/bin/sh

git push origin :refs/tags/dev && git tag -f dev && git push origin dev
curl -X POST JENKINS_URL/job/JOB_NAME/build \
  --user USER:TOKEN
