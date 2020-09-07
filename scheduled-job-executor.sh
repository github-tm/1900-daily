#!/bin/bash

while read repo; do
  curl -X POST -H "Authorization: token ${GITHUB_TOKEN}" \
  -d '{"ref": "master", "environment": "periodic execution"}' \
  "https://api.github.com/repos/docker-hub-tm/${repo}/deployments"
done < repolists/docker-build.txt
