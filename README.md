# Description

Generates .dd files with different configurations to test disk-detective

# Preparation

- Setup a Linux OS (Ubuntu) in VirtualBox
- Add a virtual hard disk with size of 50MB 
- Verify that the new block device is available as /dev/sdb 
  - Otherwise it will waste your other disks

# Example

**CMD:** 

```sh
sudo bash disk-detective-data.sh
```

Creates .dd files in the following location:
```
disk-detective-data
├── data
│   └── mbr
│   │   ├── 01.dd
│   │   ├── 02.dd
│   │   ├── 03.dd
│   │   ├── 04.dd
│   │   ├── 05.dd
│   │   ├── 06.dd
│   │   └── 07.dd
|   │
│   └── ext
│   │   └── 01.dd
|   │
│   └── fat
│   │   └── 01.dd
|   │
|   └── ntfs
│       └── 01.dd
```

# Information

To get more information of the images use `tsk.sh`:

```bash
pip install sleuthkit
sudo bash tsk.sh
```

Creates the following directory structure with TSK result files:

```
disk-detective-data/tsk
├───ext
│       002-fsstat.txt
│       003-fsstat.txt
│       004-fsstat.txt
│       mmls.txt
│       
├───fat
│       002-fsstat.txt
│       003-fsstat.txt
│       004-fsstat.txt
│       mmls.txt
│       
├───mbr
│       01-mmls.txt
│       02-mmls.txt
│       03-mmls.txt
│       04-mmls.txt
│       05-mmls.txt
│       06-mmls.txt
│       07-mmls.txt
│
└───ntfs
        002-fsstat.txt
        mmls.txt
```


# License

MIT