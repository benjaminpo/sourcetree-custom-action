#!/bin/sh

git push origin :refs/tags/test && git tag -f test && git push origin test
curl -X POST JENKINS_URL/job/JOB_NAME/build \
  --user USER:TOKEN
