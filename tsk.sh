#!/bin/bash

# pip install sleuthkit

rm -rf tsk

mkdir tsk
mkdir tsk/ext
mkdir tsk/fat
mkdir tsk/ntfs
mkdir tsk/mbr

echo ""
echo "Create MBR TSK FILES"
echo "---------------------"

for i in {1..7}
do
    mmls data/mbr/0$i.dd > tsk/mbr/0$i-mmls.txt
done

echo "Done"
echo "---------------------"
echo ""
echo ""

echo ""
echo "Create NTFS TSK FILES"
echo "---------------------"

mmls data/ntfs/01.dd > tsk/ntfs/mmls.txt
fsstat -o 2048 data/ntfs/01.dd > tsk/ntfs/002-fsstat.txt

echo "Done"
echo "---------------------"
echo ""
echo ""

echo "Create ext TSK FILES"
echo "---------------------"

mmls data/ext/01.dd > tsk/ext/mmls.txt
fsstat -o 2048 data/ext/01.dd > tsk/ext/002-fsstat.txt
fsstat -o 22528 data/ext/01.dd > tsk/ext/003-fsstat.txt
fsstat -o 43008 data/ext/01.dd > tsk/ext/004-fsstat.txt

echo "Done"
echo "---------------------"
echo ""
echo ""

echo "Create fat TSK FILES"
echo "---------------------"


mmls data/fat/01.dd > tsk/fat/mmls.txt
fsstat -o 2048 data/fat/01.dd > tsk/fat/002-fsstat.txt
fsstat -o 12288 data/fat/01.dd > tsk/fat/003-fsstat.txt
fsstat -o 32768 data/fat/01.dd > tsk/fat/004-fsstat.txt

echo "Done"
echo "---------------------"
echo ""