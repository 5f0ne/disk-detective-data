#!/bin/bash

dc3dd wipe=/dev/sdb

sfdisk /dev/sdb < ./scripts/fat/01.sfdisk

mkfs -t vfat -F 12 -n FAT12-01 /dev/sdb1
mkfs -t vfat -F 16 -n FAT16-01 /dev/sdb2
mkfs -t vfat -F 32 -n FAT32-01 /dev/sdb3

dcfldd if=/dev/sdb of=./data/fat/01.dd hash=md5,sha256