#!/bin/bash -eu

for line in $(cat computers)
do
    scp -q client_script.sh $line:
    ssh $line ./client_script.sh
    echo 
done

