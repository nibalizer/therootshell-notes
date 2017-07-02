#!/bin/bash

# Script to hit the github api and print some useful stats


repo=$1

if [ -z $repo ]; then
    echo "Need repo"
    exit 1
fi

temp=$(tempfile)

curl -s -L "https://api.github.com/repos/${repo}" | jq '.' > $temp
stars=$(cat $temp | grep 'stargazers_count' | cut -d ":" -f 2 | tr -d " ,")
watchers=$(cat $temp | grep 'watchers_count' | cut -d ":" -f 2 | tr -d " ,")
forks=$(cat $temp | grep 'forks_count' | cut -d ":" -f 2 | tr -d " ,")

echo "For the repo: ${repo}"
echo "Forks: ${forks}"
echo "Stars: ${stars}"
echo "Watchers: ${watchers}"

rm -f $temp
