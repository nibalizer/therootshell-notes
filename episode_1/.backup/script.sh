#!/bin/bash

temp=`tempfile`

curl https://api.github.com/repos/ansible/ansible | jq '.' >> $temp

cat $temp | jq '.stargazers_count'

