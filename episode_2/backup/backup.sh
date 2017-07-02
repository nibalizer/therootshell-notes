#!/bin/bash

echo "Backing up the mysql database"

password=$(cat pw)

rm -f db_backup-10.data.gz

for i in 9 8 7 6 5 4 3 2 1
do
	j=$((i+1))

	mv db_backup-$i.data.gz db_backup-$j.data.gz

done

mysqldump -u root  --password=${password} menagerie | gzip >  db_backup-1.data.gz
