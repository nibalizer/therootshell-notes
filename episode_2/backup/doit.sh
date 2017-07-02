#!/bin/bash

echo "insert into pet (name, owner, species, sex, birth, death) values ('Spot', 'Molly', 'Dog', 'm', '2014-07-04', '2017-07-01');" | mysql -u root -D menagerie --password=notthepassword
