#!/bin/bash

dc3dd wipe=/dev/sdb

sfdisk /dev/sdb < ./scripts/fat/01.sfdisk

mkfs.ext2 /dev/sdb1
mkfs.ext3 /dev/sdb2
mkfs.ext4 /dev/sdb3

dcfldd if=/dev/sdb of=./data/ext/01.dd hash=md5,sha256