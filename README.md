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
bash disk-detective-data.sh
```

Creates .dd files in the following location:
```
disk-detective-data
├── data
│   └── mbr
│       ├── 01.dd
│       ├── 02.dd
│       ├── 03.dd
│       ├── 04.dd
│       ├── 05.dd
│       ├── 06.dd
│       └── 07.dd
```

# Available Data

## MBR

- Sector size: 512 Byte
- No of sectors: 102400

**data/mbr/01.dd - 4 Partition Entries**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|---:|:---:|:---:|
| 1 | NTFS  (07) | 2048 | 20480 | 80 |
| 2 | ext4  (83) | 22528 | 20480 | 00 |
| 3 | FAT16 (06) | 43008 | 20480 | 00 |
| 4 | FAT32 (0b) | 63488 | 38912 | 00 |

**data/mbr/02.dd - 3 Partition Entries, First Empty**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|:---:|:---:|:---:|
| 1 | - | - | - | - |
| 2 | ext4  (83) | 22528 | 20480 | 00 |
| 3 | Extended (05) | 43008 | 20480 | 80 |
| 4 | FAT32 (0b) | 63488 | 38912 | 00 |

**data/mbr/03.dd - 3 Partition Entries, Second Empty**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|:---:|:---:|:---:|
| 1 |  NTFS  (07) | 2048 | 20480 | 80 |
| 2 | - | - | - | - |
| 3 | Extended (05) | 43008 | 20480 | 00 |
| 4 | FAT32 (0b) | 63488 | 38912 | 00 |

**data/mbr/04.dd - 3 Partition Entries, Fourth Empty**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|:---:|:---:|:---:|
| 1 |  NTFS  (07) | 2048 | 20480 | 80 |
| 2 | ext4  (83) | 22528 | 20480 | 00 |
| 3 | FAT16 (06) | 43008 | 20480 | 00 |
| 4 | - | - | - | - |

**data/mbr/05.dd - 1 Partition Entry, Position 1**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|:---:|:---:|:---:|
| 1 |  NTFS  (07) | 2048 | 20480 | 80 |
| 2 | - | - | - | - |
| 3 | - | - | - | - |
| 4 | - | - | - | - |

**data/mbr/06.dd - 1 Partition Entry, Position 2**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|:---:|:---:|:---:|
| 1 | - | - | - | - |  
| 2 | FAT32  (0b) | 22528 | 20480 | 80 |
| 3 | - | - | - | - |
| 4 | - | - | - | - |

**data/mbr/07.dd - 1 Partition Entry, Position 4**

| # | Partition Type | Start | Size | Bootable |
|:---:|---|:---:|:---:|:---:|
| 1 | - | - | - | - |  
| 2 | - | - | - | - |  
| 3 | - | - | - | - |
| 4 | ext4 (83) | 63488 | 38912 | 80 |

# License

MIT