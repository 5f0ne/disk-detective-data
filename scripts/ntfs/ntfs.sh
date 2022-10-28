#!/bin/bash

dc3dd wipe=/dev/sdb

sfdisk /dev/sdb < ./scripts/ntfs/01.sfdisk

mkfs.ntfs /dev/sdb1

dcfldd if=/dev/sdb of=./data/ntfs/01.dd hash=md5,sha256