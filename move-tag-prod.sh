#!/bin/sh

git push origin :refs/tags/prod && git tag -f prod && git push origin prod
curl -X POST JENKINS_URL/job/JOB_NAME/build \
  --user USER:TOKEN
