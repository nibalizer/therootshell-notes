#!/bin/bash -u

echo "Printing Real Users on the system"


foo=$(ls)

#echo $foo

for user in $(cat /etc/passwd | grep '/bin/bash' | cut -d ":" -f 5)
do
    echo "Found user ${user1}"
    #rm -fr "/home/${user1}"
done

