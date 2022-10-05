#!/bin/bash

# Wipes current test data
rm -rf ./data

# creates data dir
mkdir data

# 1.) Create MBR dd files for different MBR configurations

# Create MBR test data dir
mkdir data/mbr

# For each sfdisk script:
for i in {1..7}
do
    # Wipe the virtual hard disk
    sudo dd if=/dev/zero of=/dev/sdb bs=512 count=1 conv=noerror,sync
    # Use the specific sfdisk script as input
    sudo sfdisk /dev/sdb < ./scripts/mbr/0$i.sfdisk
    # Create a dd file of /dev/sdb
    sudo dd if=/dev/sdb of=./data/mbr/0$i.dd bs=512 conv=noerror,sync
done



