#!/bin/bash

repo=$1

if [ -z $repo ]; then
    echo "need repo"
    exit 1
fi

curl -s "https://api.github.com/repos/${repo}" | jq '.'  | grep has_wiki | cut -d ":" -f 2 | tr -d ", "

