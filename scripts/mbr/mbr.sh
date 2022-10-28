#!/bin/bash

for i in {1..7}
do  
    sudo dc3dd wipe=/dev/sdb
    sudo sfdisk /dev/sdb < ./scripts/mbr/0$i.sfdisk
    dcfldd if=/dev/sdb of=./data/mbr/0$i.dd hash=md5,sha256
done